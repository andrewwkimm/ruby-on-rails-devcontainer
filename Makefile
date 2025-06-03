help:
	cat Makefile

################################################################################

build:
	bundle install
	make formatter
	make lint
	make test

db-setup:
	bundle exec rails db:create db:migrate db:seed

formatter:
	bundle exec rubocop --autocorrect

setup:
	overcommit --install
	overcommit --sign
	bundle install
	yarn install
	db-setup

test:
	bundle exec rspec --format progress

test-coverage:
	COVERAGE=true bundle exec rspec --format progress

.PHONY: \
	build \
	db-setup \
	formatter \
	setup \
	test \
	test-coverage