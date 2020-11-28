# Illustrate .PHONY and clean

## .PHONY
This just tells make that the value for this key is not a real file

## clean
We sometimes what to start from scratch. Therefore we can set up a `clean` target.

Because the default target does not depend on clean, it only runs when explicitly called.

`make clean`

`
