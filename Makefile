.PHONY: all compile run

all:
	rebar skip_deps=true compile

compile:
	rebar get-deps compile

run:
	erl -env ERL_LIBS `pwd`:`pwd`/deps +pc unicode -s htmltest start
