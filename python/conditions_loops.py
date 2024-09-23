# Using predefined keywords like if, else, def, for, return, etc.

# Define a function using 'def' keyword
def greet_person(name):
    if name == "Sayyam":  # 'if' keyword for condition
        return "Hello, Sayyam!"  # 'return' keyword to return a value
    else:  # 'else' keyword for alternate condition
        return "Hello, stranger!"

# Calling the function and using 'print' to display the result
print(greet_person("Sayyam"))  # This will greet Sayyam
print(greet_person("John"))    # This will greet a stranger


import keyword #how many keywords are available
print(keyword.kwlist)

# Using a loop with 'for' keyword
for i in range(3):  # Loop 3 times
    print("Loop itration...:", i)


#multiline comments
'''
ncv jnvjncj jcvj
vnnjvcjckn knvckn kcn
c v vmc m cmvc mmcv 
cm mc mvmmcv mv
'''


# Demonstrating the 'try' and 'except' keywords for exception handling
try:
    number = int("Sayyam")  # This will cause a ValueError
except ValueError:  # Handle the exception with 'except'
    print("Oops! 'Sayyam' is not a number.")
finally:
    print("This is the 'finally' block, it runs no matter what.")
