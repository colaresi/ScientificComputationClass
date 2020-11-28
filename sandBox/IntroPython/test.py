import sys

ARGS = sys.argv
print(ARGS)


def addIt(x, y):
    print(x+y)


print("x: {1}\ny: {2}\nsum:".format(*ARGS))
addIt(int(ARGS[1]), int(ARGS[2]))

print("done")
