########################################################################################

# This Makefile generated by GoMakeGen 0.6.0 using next command:
# gomakegen --verbose .

########################################################################################

.PHONY = fmt deps deps-test test

########################################################################################

deps:
	git config --global http.https://pkg.re.followRedirects true
	go get -d -v pkg.re/essentialkaos/ek.v9

deps-test:
	git config --global http.https://pkg.re.followRedirects true
	go get -d -v pkg.re/check.v1

test:
	go test -v -covermode=count .

fmt:
	find . -name "*.go" -exec gofmt -s -w {} \;

########################################################################################
