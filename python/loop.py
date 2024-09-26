# loops >> it allows to excute code repeadetly
# for and while



# while loop >> repeadtly excute block of code until is condition is true
# while keyword  used for while loop

n = 7
i=1
while i<n:
    print(i)
    i=i+1

print("---------------------without break==============")
count=5
while count > 0:
    print(count)
    count=count-1
else:
    print("this will excuted suuccessfully when while loop run without break")

print("==================using break======================")

count=5
while count > 0:
    print(count)
    count=count-1
    if count == 1:
        print("adding break ")
        break # it will terminate the loop  exit it and do'nt do anything while loop stop
else:
    print("this will excuted suuccessfully when while loop run without break")
print("=============================using continue in place ifi break")
# continue 
n = 7
i=1
while i<n:
    i=i+1
    if i==4:
        continue # use to skip the particular itration
    print(i)
else:
    print("this will excuted suuccessfully when while loop run without break")



print("for loop=====================")

#itration for sequence of items

for i in "pwskills":#items can be list or string
    print(i)
print("===============================================")
l=["data",3,78,8.2,3+1j]
for i in l:
 if i == 8.2:
     break #it will exit out of the loop once the condition is satisfied
 print(i)
else:
    print("successfully excuted for loop ")
print("==============================================")
for i in l:
    if i == 3:
        continue #it will skip if this condition is true it will skip that particular itration
    print(i)
else:
    print("successfully excuted it for loop")
print("==============================================")
#range function written in python will give you the values you want
# 
for i in range(10)  :
    print(i)

for i in range(20):
    print(i,end=" ")
print("===========================================")
#prin * pattern
n = range(5)
# for i in n:
#     for j in n:
#     print("*")
# row = 1
# while row<=5:
#     col = 1
#     while col <= row:
#         print("*",end="")
#         col = col+1
#     print("")
#     row=row+1
# print("-----------------------------------------------------")
# row = 1
# while row <= 5:
#     col = 1
#     while col <= row:
#         print("*", end="")  # Prints * without a newline
#         col = col + 1
#     print("")  # Print a newline after finishing the row
#     row = row + 1  # Increment row to move to the next line
row =1
while row<=5:
    col = 1
    while col <= row:
        print("*",end="")
        col = col + 1
    print("")
    row = row + 1

print("====================================================")

n= range(6)
for i in n:
    for j in range(i):
        print("*",end="")
    print("")

print("-------------------------------------------------------------")
# primnt a box usinhg nested loop
for i in n:
    for j in n:
       if i == 0 or i == 5:
           print("*",end=" ")
       elif j >= 1 and j <=4:
           print(" ", end=" ")
       else:
           print("*",end= " ")
               #    if j==0 or j== 5:
    #         #print("(",i,",", j ,")") # i stand for row and j stand for column
    #         print("*",end=" ")
    print("")
print("=============================sawstik====================================")
# sawstik using  * pattern
row = 6
col=8 
for i in range(row):
    for j in range(col):
        if j == 0 and i <= col//4:
         print("*",end=" ")
        elif i == col//4 :
         print("*",end=" ")
        elif i > col//4 and j == row + 1:
         print("*",end=" ") 
        elif j == col//2:
         print("*",end= "")
        elif j == n and i ==5:
         print("*",end=" ")
        # if j == col and j <= col:
        #  print("*",end=" ")
        else:
         print(" ",end=" ")
    print("")

print("=============================jxcjdbjcbcbdcjdbj================")


n = 7  # Size of the Swastik, it should be an odd number for symmetry

for i in range(n):
    for j in range(n):
        # Condition for the first half of the Swastik
        if i < n // 2:
            if j == 0 or j == n // 2:  # First column and middle column in the top half
                print("*", end=" ")
            elif i == 0 and j >= n // 2:  # Top row after the middle
                print("*", end=" ")
            else:
                print(" ", end=" ")
        # Condition for the middle row of the Swastik
        elif i == n // 2:
            print("*", end=" ")
        # Condition for the second half of the Swastik
        else:
            if j == n // 2 or j == n - 1:  # Last column and middle column in the bottom half
                print("*", end=" ")
            elif i == n - 1 and j <= n // 2:  # Bottom row before the middle
                print("*", end=" ")
            else:
                print(" ", end=" ")
    print()  # New line after each row
#========================================printing cross===========================================
print("====================================================")
print("")
nL=10

for i in range(nL):
    for j in range(nL):
        #print("(",i,",",j,")",end=" ")
        if i==j:  
         #print(i,j,end=" ")
         print("* ",end=" ",)
        elif i + j == nL-1:
         print("* ",end=" ")
        else:
           print(" ",end=" ")
    print()


print("------------------------5 PATTER---------------------------------------")



for i in range(nL):
    for j in range(nL):
        #print("(",i,",",j,")",end="")
        if i==0 or i == nL -1:    
         print("*",end=" ",)
        elif j==0 and i <= int((nL -1 )/ 2):
         print("*",end=" ",)
        elif i == int((nL )/ 2):
         print("*",end=" ",)
        elif j== nL-1 and i > int((nL -1)/ 2):
         print("*",end=" ")

        else:
           print(" ",end=" ")
    print()
