.PHONY: clean compile

all: compile

clean:
	-@rm -rf bin/ebin/*.beam

compile:
	-@erlc -v +debug_info -o bin/ebin -Werror \
		`find src -regex '.*\.\(erl\|hrl\)'` && \
	dialyzer -q -n bin/ebin \
		-Wunmatched_returns \
		-Werror_handling \
		-Wrace_conditions
