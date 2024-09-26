#if -statement
#if condition True:
# this code will excuted
print("======================if========================")

a=100
if a> 0:# if this condition is trye then only go into this block of code excute
    print("no is greater than 100 $a")


if a<0:
    print("no is grater")

print("======================if-else statement======================")
#if-else statement
#if condition Ture:
# then it will excute
#else: if conditon is not true
#then it will excute
weather="rainy" 
if weather=="sunny":
    print("i will not play a cricket")
else:
    print("i will play cricket.................yaayya")

d_course=False
if d_course:
 print("course available")

number=0
if ((number%2==0) and (number > 0)):
    print("no is even no................!!")
else:
    print("no is odd ...")


age=input("Enter age :")
print(type(age))
if  int(age)> 30:
    print("you are uncle ..:")
else:
    print("you are younger....")

print("----------------------if-elif-else----------------------------")

#if-elif-else 
#when we want to excute multplie conditons then we use this
#if conditon True:
#this statemebt excuted
# elif conditiomn True:above condition does'nt statstified 
# this statemebbt will excuted
# else : both condition does'nt statisfied
#this  will be excuted

a=int(input("Enter a no to check: "))
if a<100:
    print("a is grater than 100")
elif a> 2000:
    print("no is huge")
elif a<100:
  print("a is less than 100")
else:
    print("a is equal to 100")

print("score of the child :")

score=int( input("calcukate grade of child no bases of % :"))
if score>=90:
    print("Grade A")
elif (80 <= score < 90 ):
    print("Grade B")
elif (60<= score <80):
    print("Grade C")
else:
    print("Grade D")



#nested if -else  condition inside another condition
#if condition true:
# if condition true: this is inside if
#    else: inside if
# else: outside if else


x=9
y=2
if x>5:
    if y> 5:
        print("x an d y both are greater than 5")
    else:
        print("x is greater than 5 but y is less than 5")

else:
    print("x is not greater than y")

#user coorect deetail and if all is correct then login/register

name=input("Enter your name: ")
email =input("Enter your email: ")
password=input("Enter password: ")

if name == "":
    print("Invaild empty name please provide some name")
if "@" not in email :
    print("invalid email : please provide correct email contain @")
if len(password) == 0 or len(password) < 5:
    print("length is too short")