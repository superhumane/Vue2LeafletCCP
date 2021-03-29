# Build project
build:
	docker run -it --rm -v $(shell pwd):/usr/src -w /usr/src/ node:12 sh -c "curl --compressed -o- -L https://yarnpkg.com/install.sh | bash && exec $$SHELL -l -c 'yarn install && yarn build;'"

.PHONY: build