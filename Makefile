.PHONY: clean compile

beam_dir = bin/ebin
beams = $(beam_dir)/*.beam

all: compile

clean:
	-@rm -rf $(beams)

compile:
	@erlc -v +debug_info -o $(beam_dir) -Werror \
		`find src -regex '.*\.\(erl\|hrl\)'` && \
	dialyzer --quiet -n bin/ebin \
		--plts `find build/plts -regex '.*\.plt'`\
		-Wunmatched_returns \
		-Werror_handling \
		-Wrace_conditions

plt:
	-@build/gen_plt
