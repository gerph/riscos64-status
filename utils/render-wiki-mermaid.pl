#!/usr/bin/env perl
##
# Replace Mermaid diagrams in generated Wiki pages with rendered PNG images.
#
# Syntax: render-wiki-mermaid.pl <wiki-dir> <image-dir> [image-base-url] [cache-dir]
#

use warnings;
use strict;

use Digest::SHA qw(sha256_hex);
use File::Basename qw(basename);
use File::Copy qw(copy);
use File::Path qw(make_path remove_tree);

my $syntax = "Syntax: $0 <wiki-dir> <image-dir> [image-base-url] [cache-dir]\n";
my $wikidir = shift || die $syntax;
my $imagedir = shift || die $syntax;
my $imagebase = shift;
my $cachedir = shift;

$imagebase = $ENV{'WIKI_IMAGE_BASE_URL'} if !defined($imagebase) && exists($ENV{'WIKI_IMAGE_BASE_URL'});
$imagebase = '' if !defined($imagebase);
$imagebase =~ s!/$!!;

$cachedir = $ENV{'WIKI_IMAGE_CACHE_DIR'} if !defined($cachedir) && exists($ENV{'WIKI_IMAGE_CACHE_DIR'});
$cachedir = '.mermaid-cache' if !defined($cachedir);

die "Cannot find Wiki directory '$wikidir'\n" unless -d $wikidir;

remove_tree($imagedir) if -d $imagedir;
make_path($imagedir) unless -d $imagedir;
die "Cannot create image directory '$imagedir': $!\n" unless -d $imagedir;
make_path($cachedir) unless -d $cachedir;
die "Cannot create Mermaid cache directory '$cachedir': $!\n" unless -d $cachedir;

my @pages = sort glob("$wikidir/*.md");
my $diagrams = 0;
my $rendered = 0;
my $reused = 0;
my @upload;
my %uploaded;
my $uploadedfile = "$cachedir/uploaded-images.txt";
my $uploadfile = "$imagedir/upload-files.txt";

if (-f $uploadedfile)
{
    open(my $ufh, '<', $uploadedfile) || die "Cannot read uploaded image list '$uploadedfile': $!\n";
    while (my $line = <$ufh>)
    {
        chomp($line);
        $uploaded{$line} = 1 if $line ne '';
    }
    close($ufh);
}

for my $page (@pages)
{
    open(my $ifh, '<', $page) || die "Cannot read Wiki page '$page': $!\n";
    my @lines = <$ifh>;
    close($ifh);

    my $pageleaf = basename($page);
    $pageleaf =~ s/\.md$//;
    $pageleaf =~ s/[^A-Za-z0-9_.-]+/-/g;

    my @output;
    my $changed = 0;
    my $diagram = 0;

    for (my $index = 0; $index < @lines; $index++)
    {
        my $line = $lines[$index];
        if ($line =~ /^```\s*mermaid\s*$/)
        {
            my @mmd;
            $index++;
            while ($index < @lines && $lines[$index] !~ /^```\s*$/)
            {
                push @mmd, $lines[$index];
                $index++;
            }
            die "Unterminated Mermaid block in '$page'\n" if $index >= @lines;

            $diagram++;
            $diagrams++;
            my $hash = substr(sha256_hex(join('', @mmd)), 0, 16);
            my $imageleaf = sprintf("%s-%02d-%s.png", $pageleaf, $diagram, $hash);
            my $mmdfile = "$cachedir/$hash.mmd";
            my $pngfile = "$imagedir/$imageleaf";
            my $cachefile = "$cachedir/$hash.png";
            my $imagesrc = $imagebase eq '' ? "$imagedir/$imageleaf" : "$imagebase/$imageleaf";

            if (-f $cachefile)
            {
                $reused++;
            }
            else
            {
                $rendered++;
                open(my $mfh, '>', $mmdfile) || die "Cannot write Mermaid source '$mmdfile': $!\n";
                print $mfh @mmd;
                close($mfh);

                my @command = ('utils/mmdc', '-e', 'png', '-o', $cachefile, '-i', $mmdfile);
                system(@command) == 0 || die "Cannot render '$mmdfile' to '$cachefile'\n";
                unlink($mmdfile) || die "Cannot remove temporary Mermaid source '$mmdfile': $!\n";
            }

            copy($cachefile, $pngfile) || die "Cannot copy cached Mermaid image '$cachefile' to '$pngfile': $!\n";
            push @upload, $pngfile unless $uploaded{$imageleaf};

            push @output, "![Diagram from $pageleaf]($imagesrc)\n";
            $changed = 1;
        }
        else
        {
            push @output, $line;
        }
    }

    if ($changed)
    {
        open(my $ofh, '>', $page) || die "Cannot write Wiki page '$page': $!\n";
        print $ofh @output;
        close($ofh);
    }
}

open(my $uploadfh, '>', $uploadfile) || die "Cannot write upload image list '$uploadfile': $!\n";
for my $filename (@upload)
{
    print $uploadfh "$filename\n";
}
close($uploadfh);

print "Processed $diagrams Mermaid diagram";
print "s" unless $diagrams == 1;
print ": rendered $rendered, reused $reused, upload " . scalar(@upload) . " into $imagedir\n";
