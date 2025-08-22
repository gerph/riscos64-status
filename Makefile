##
# Build things as we do in CI.
#

all: \
		statistics.json \
		statistics.md \
		plan.json \
		planning/Stack-Audio.mmd \
		planning/Phase-1.mmd \
		planning/Current.md \
		planning/Stacks.md \

clean:
	-rm statistics.json
	-rm statistics.md
	-rm plan.json
	-rm planning/*.mmd
	-rm planning/*.svg

statistics.json: utils/makestats.pl README.md
	utils/makestats.pl json > statistics.json

statistics.md: utils/makestats.pl README.md
	utils/makestats.pl md > statistics.md

plan.json: utils/plantogantt.pl planning/Phases.md
	utils/plantogantt.pl > plan.json

# We only mark one file as being generated for these
planning/Stack-Audio.mmd: utils/plantogantt.pl planning/Phases.md
	utils/plantogantt.pl mmd

# Again, only one file is generated for these
planning/Phase-1.mmd: utils/currenttogantt.pl plan.json statistics.json
	utils/currenttogantt.pl plan.json statistics.json

planning/Current.md: utils/updatecurrent.pl plan.json
	utils/updatecurrent.pl plan.json

planning/Stacks.md: utils/updatestacks.pl plan.json
	utils/updatestacks.pl plan.json

planning/Stack-Audio.svg: planning/Stack-Audio.svg
	for i in planning/Stack-*.mmd ; do utils/mmdc $$i ; done

planning/Phase-1.svg: planning/Phase-1.mmd
	for i in planning/Phase-*.mmd ; do echo utils/mmdc -o planning/$$(basename $$i .mmd).svg $$i ; done
