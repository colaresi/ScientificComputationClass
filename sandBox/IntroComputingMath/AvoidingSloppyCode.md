---
title: Avoiding sloppy python code
author: MPC
date: 11/10/2020
---

Wanted to flag a few bad habits I see creeping into the python code in the class.

0. Lint ... your ... code. If you are having trouble installing pylint in particular, let me know. You do not need to integrate it into vim (through ALE). You can run pylint at the command line.

1. Do not import modules within functions. This makes organizing versioning and replicability more difficult as compared to imports at the top of the file. Moreover, if you import within a function, you cannot use that module in another function without re-importing (this is not actually re-loading, but the namespace is different). Other ways of avoiding name clashes between modules (for example by using from XX import YY as ZZ) are preferred.

2. Lint ... your ... code, like with pylint. Learn from its output. I see lots of simple mistakes that linking a .py file would have flagged first. Some example: bad indendation; a variable not used; a variable used but never defined; forgetting to import a function (like Counter in the script).

3. You have to be careful to check your code after you develop it in a notebook or running it interactively. I have seen too many files where individual functions only ran because there was some global variable defined so in the notebook it might have worked ok; but once you put the code in a .py script it would not run because you never defined that variable in the proper scope. For example, by defining it globally (meaning outside of a function of a class) or in each function). I also saw people not import necessary pieces in the .py script but perhaps they were in the notebook. Using one cell (at the top) for imports in a notebook can help.

4. Use f strings where you can, they are what the python community has been moving towards and have a nicer syntax and readability compared to .format or other approaches to string iterpolation (that is... putting the values that objects point to in strings to print out). If you have `my_name = ["Michael", "Colaresi"]print(f"{my_name[0]} is my first name and {my_name[1]} is my last name")` will print `Michael is my first name and Colaresi is my last name`

5. Use docstrings """ for comments not other delimiters in python. I should not see #-----------------

6. Organizing functions to run other functions as we did with `main()` awhile back, is useful, so it pays to focus on how you organize your code in this way. A `main()` function, for example should call other functions. The functions should not be defined INSIDE main, they should be called inside `main`. Like so, 

```python
def my_sum(A: float, B: float) -> float:
    return A + B
def my_product(A: float, B: float) -> float:    
    return A*Bdef 
main():
    first_num = 5.2
    second_num = 3.2
    my_sum(first_num, second_num)
    my_product(first_num, second_num)
```

7. The statement: `if __name__ == "__main__":` is a little confusing so lets go over it one more time. Imagine you have a python script names `ml.py`.  If you ran, at the command line: `python ml.py` i
Then python sets a variable as it runs named `__name__`. When you are running the script from the interpreter, the value that the `__name__` variable points to is `"__main__"`. Now lets instead, open up a jupyter notebook using jupyter lab (in our heads). In that new python 3 session in the first cell (if ml.py is in our pwd), we can type (this is in the jupyter notebook!) `import ml`

In this case when we IMPORT the ml.py object definitions that script is not being run as the main script (it is just imported!), so `__name__` does NOT equal `"__main__"`. 

- If we are running the script ml.py at the command line itself, with `python ml.py`; then it is the main show (`__name__ == "__main__"`).

- if we are importing that script to use in another script (possibly with many other scripts) then it is a smaller player `__name__ != "__main__"`. Crucially, then that condition does not get triggered and any code beloning to the `if __name__ == "__main__"` statement does NOT get run, but neither does it kick an error.

8.  Be careful about types!  I saw a few examples where people tested whether a variable was equal to an `int` but made the value a string that was tested a string. What you want is something like this:

```python
assert len(X) == 6, "The length is not 6"
```

But what I saw was:

```python
assert len(X) == "6", "THIS WILL ALWAYS TRIP BECAUSE len RETURNS AN INT!!!!!!!!!!!"
```

9. Lint .... your ... code  (error: this was already defined)

10. Some people are strong on lists and dictionarys, but are not following defaultdict or Counter. Here is a quick example.
```python
from collections import defaultdict, Counter

sent = "This is a sentence that has the word sentence more than is normal for a sentence 
# first we initialize an instance of a defaultdict type, tell in what values should be
# now when there is a new key provided, the value will be an int, and it will start at 0
my_dd = defaultdict(int)
# now we add a key and tell my_dd what to do if it already has the key
# we will do this while looping over the words in the sentence, splitting on spaces
for word in sent.split():
    my_dd[word] += 1

# using Counter, we do not even have to say we want ints, and can just throw a list to it
my_counter = Counter(sent.split())
```

`my_counter` and `my_dd` will hold the same information.

It is important to understand the `defaultdict` and `Counter` are convenience objects that save us from typing and creating the same type of dictionary each time. The steps utilizing for both of these objects (`defaultdict` and `Counter`) are similar. 

1. Inialize a object of the type we want (this spins up a new object), it is empty but it knows what to do in various cases. For example `my_dd = defaultdict(int)` does not have any keys, but it is ready to create new values at with a starting value (before we increment by 1) of 0. If we had said we wanted values to be strings, it would have started with an emptry string for us. 

2. Then fill in that object by defining a key `my_dd[word]` does that for us, and how to increment the default value or present value, that is what `my_dd[word] += 1` does.

`Counter` does this in one step.
 
11. When we are looping through dictionaries, the pythonic way (say it in a Mandolorian tone -- this is the pythonic way) you use the `.items()` method. If we want the `key, val` pairs for the `my_dd` above, then we would loop over `my_dd.items()` now `my_dd`. Looping over a dictionary (or defaultdict or Counter object) loops over the keys.

12. 
