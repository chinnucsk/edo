.PHONY: clean compile dz

beams = bin/ebin/*.beam

all: compile

clean:
	-@rm -rf $(beams)

compile:
	-@erlc -v +debug_info -o bin/ebin -Werror \
		`find src -regex '.*\.\(erl\|hrl\)'` && \
	dialyzer -q -n bin/ebin \
		-Wunmatched_returns \
		-Werror_handling \
		-Wrace_conditions

dz:
	-@dialyzer --build_plt $(beams) \
		--apps erts kernel stdlib
