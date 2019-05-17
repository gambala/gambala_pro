console:
	rails console

lint-js:
	./node_modules/.bin/eslint app/javascript --fix

lint-ruby-setup:
	bundle exec rubocop --auto-gen-config

lint-ruby:
	bundle exec rubocop -a

lint-security:
	brakeman

start:
	bundle exec falcon serve -b http://localhost:3000

watch:
	overmind start

s: start
