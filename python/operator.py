# type: ignore # arthametic operator

#additon
print("additon")
print(5 + 5)

# substraction
print("substraction")
print(10 - 5)

#multiplication
print("multiplication")
print(10 * 5)

#divide
print("divide")
print(10/2)

#square of te no
print("square of te no")
print( 2 ** 2)
#without floor
print("without floor")
print(4/3)

print("with floor")
#with floor
print(4//3)

#========================compaarsion operator==================
#compare two value and written boolean
print("========================compaarsion operator==================")
print("== equal equal")
print(2 == 2)

print("!= not equal")
print(2 != 4)
print(2 == 2)

print("less than <")
print(10 < 2)

print("<= less than equal to")
print(10 <= 10)

print(">= greater than equal to")
print(12 >= 13)

#=======================logical operator================

print("======================logical operator================")

#AND
print(True and True) #True
print(True and False) # false
print(False and True) #false
print(False and False)#false
#OR
print("=================or==========")
print(True or True) #True
print(True or False) # true
print(False or True) #true
print(False or False)#false

#not
print("===============not")

print(not True)
print(not False)


#==================assigment operator=================

print("==================assigment operator=================")
a=10
a=a+10
print(a)

b=5
b+=10#b=b+10
print(b)

b*=20
print(b)

b/=10
print(b)

'''
===================memebership operator====================
membership operators are used to check whether a value 
is a member (element) of a sequence, such as a string, list
, tuple, set, or dictionary. 
'''
print("===================memebership operator====================")
a= "pwskills"
print("kills" in a
)


lst = ["1",2,5,4,1.4, "ajay",2+3j]

print(2+3j in lst)
 
# identity operator
'''
re used to compare the memory locations of two objects. They determine whether two objects are
 the same object in memory (i.e., they have the same identity),
 not just if their values are equal.
'''

print("==========================identity operator==================")

a=45
b=20
print(a is b)#False

a= 20
b = 20
print(a is b)#True

a=[1,2,3]
b=[1,2,3]
print(a is b)

a=[1,2,3]
b=a# in this case it will ne true because both are point to samw mwnoory and object values are also samw in it

print(a is b) #true
'''
bitwise operators are used to perform operations at the binary level (i.e., bit by bit) on integers
'''

print("==========================Bitwise operator==================")
 
print("bitwise &")

print(18 & 3) #bitiwise binary
print(bin(18))
print(bin(18 & 3))


print("bitwise or")

print(3 | 5)

print(bin(3 | 5))

print("=================negation operator==( ~ )==============")
print(~-99)


print("bitwise xor operator ===================(^)================")
#it woll return one when exactly one is true not both 
print(5 ^ 3)
print(bin(5 ^ 3))


print("left shift operator============================<<")

print(5 << 3)

print(bin(5))

print(bin(40))

print("right shift operator===================>>")

print(40 >> 3)


print(bin(40))
print(bin(5))

print(" order of precedence===============paranthesis prortize first========")

print((10 + 4)-(10/2))