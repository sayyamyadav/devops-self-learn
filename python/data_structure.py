numList = [1,4,7,88,100]


#for appending the list in numlist
numList.append("banan")
#for removing the element
numList.remove(100)

print(numList)
print(type(numList))
#print(numList[-6])
print(numList[::-1])


#you can also create a list inside a list

a=[[1,2,3],5,6,[9,4]]
a.insert(a[0][1],3)
a.remove(3)
a[3] = "baingan"
print(a[0][2])
print(a)
# itration in list
print("----------------------irration on data-------------------------")
for item in a:
    print(item)

#==========================tuple==============================

#tuple is imutable which can't be change for modify
#to create tuple use () it is also hetrogenous you can store any type of data
# real life example adhar card should not be edited or employee id
print('==========================tuple==============================')
emp_name=("sayyam","ajay","chiranjiti","aayushi","chandan")
print(type(emp_name))

print(emp_name[0])


#merging two tuple
box1=("a","b")
box2 = ("c","d")
choc=(box1,box2)
print(choc)

for ch in choc:
    print(ch)

#Set is the unorder collection of unqiue element
s={"red","banana","red","blue"}
print(s)
#how to access the value from set as there is no indexing it is unorder because it is unique
#you can add or remove element in set it is mutable
#ca't accsee through index

s.add("pwskills")

print(s)
s.remove("pwskills")
print(s)

#dictionary imp and fastest data structure and used a lot by python
#it's store data in form of key-value pair
my_dic = {} #syntax of dictonary
print(type(my_dic))

#usecase
phonebook={"dad":273873827878,"mom":99666633632}
print(phonebook)
#how to access dad no in dic
print("it's a dad phone no exract it from dictonary:",phonebook["dad"]) #using key we can access the data along with it in the dictonary

#update the mobile no of dad
phonebook["dad"]=7837473727 #update the dad no
print(phonebook)

#usecase
menu={"panirkofta":45,"daldhokli":79,"fried rice": 100}
print(menu)
menu["fried rice"]=200 #updated fried rice price in this
print(menu)
#whant to know all the keys
print(menu.keys())

print("========================arrays-----------------------------")

from array import array
import sunau

#array is similar to list  only diff is it is store homogenous data all the data is similar like if it int
#all the element in array should be in int

print(array('i',[1,2,1,4]))


#string
s="str"
print(s)

for i in s:
    print(i)


num = input("Enter the no")
print(num)

env = input("Enter the cloud platform :")
if (env == "aws" or env == "AWS" ):
    print("YOU ARE IN AWS ENVIORMENT")
elif(env == "azure" or env == "AZURE"):
    print("YOU ARE IN AZURE ENVIORMENT")
else:
    print("YOUR ARE IN SOME OTHER ENVIORMENT")

name = list([0,1,"monday","sunday","tuesday"])
print(name[2])