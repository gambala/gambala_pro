lint-js:
	./node_modules/.bin/eslint app/javascript --fix

lint-ruby-setup:
	rubocop --auto-gen-config

lint-ruby:
	rubocop -a

lint-security:
	brakeman

start:
	overmind start
