lint-js:
	./node_modules/.bin/eslint app/javascript --fix

lint-ruby-setup:
	bundle exec rubocop --auto-gen-config

lint-ruby:
	bundle exec rubocop -a

lint-security:
	brakeman

start:
	overmind start
