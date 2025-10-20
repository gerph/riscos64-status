##
# Build things as we do in CI.
#

PHASES = 1 2 3 4 5 6 7

all: \
		statistics.json \
		statistics.md \
		plan.json \
		planning/Stack-Audio.mmd \
		planning/Phase-1.mmd \
		wiki-update/Status.md \
		wiki-update/Planning.md \
		wiki-update/Progress.md \
		wiki-update/Stacks.md \
		$(patsubst %,wiki-update/Phase-%.md,${PHASES})

clean:
	-rm statistics.json
	-rm statistics.md
	-rm plan.json
	-rm planning/*.mmd
	-rm planning/*.svg
	-rm -rf wiki-update

statistics.json: utils/makestats.pl Status.md
	utils/makestats.pl json > statistics.json

statistics.md: utils/makestats.pl Status.md
	utils/makestats.pl md > statistics.md

plan.json: utils/plantogantt.pl $(patsubst %,planning/Phase-%.md,${PHASES})

	utils/plantogantt.pl > plan.json

# We only mark one file as being generated for these
planning/Stack-Audio.mmd: utils/plantogantt.pl $(patsubst %,planning/Phase-%.md,${PHASES})
	utils/plantogantt.pl mmd

# Again, only one file is generated for these
planning/Phase-1.mmd: utils/currenttogantt.pl plan.json statistics.json
	utils/currenttogantt.pl plan.json statistics.json

wiki-update/Progress.md: utils/generate-progress.pl planning/Progress.md plan.json wiki-update
	utils/generate-progress.pl plan.json wiki-update/Progress.md

wiki-update/Stacks.md: utils/generate-stacks.pl planning/Stacks.md plan.json | wiki-update
	utils/generate-stacks.pl plan.json wiki-update/Stacks.md

wiki-update/Planning.md: planning/Planning.md | wiki-update
	cp $? $@

wiki-update/Terminology.md: planning/Terminology.md | wiki-update
	cp $? $@

wiki-update/Status.md: Status.md | wiki-update
	utils/fixupfootnotes.pl $? tmp-status.md
	utils/linkmodulefeatures.pl tmp-status.md $@

wiki-update/Phase-%.md: planning/Phase-%.md planning/Phase-1.mmd utils/generate-phases.pl | wiki-update
	utils/generate-phases.pl $* tmp-phase-$*
	utils/linkmodulefeatures.pl tmp-phase-$* $@

wiki-update:
	mkdir -p wiki-update

planning/Stack-Audio.svg: planning/Stack-Audio.svg
	for i in planning/Stack-*.mmd ; do utils/mmdc $$i ; done

planning/Phase-1.svg: planning/Phase-1.mmd
	for i in planning/Phase-*.mmd ; do echo utils/mmdc -o planning/$$(basename $$i .mmd).svg $$i ; done
