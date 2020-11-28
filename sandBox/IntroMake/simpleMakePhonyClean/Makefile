#! /usr/bin/env make

someOutput: inputHere
	echo "This will run second"
	cat inputHere > someOutput

inputHere:
	echo "This will run first!"
	echo "Hello World" > inputHere

.PHONY: clean

clean:
	rm -f inputHere
	rm -f someOutput

