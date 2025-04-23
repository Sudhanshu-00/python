
# -- f string uae for concatenation, f is function 
# f"{i},{j}"
# x= int(input("Enter your name: "))
# y= int(input("Enter your name: "))
# for i in range(x,y):
#     for j in range(x,i+1):
#         print("*", end=" ")
#     print("\n")

#  x=int(input("enter no : "))
#  y=int(input("enter no : "))
#  for i in range(x,y):
#      for j in range(x,i+1):
#          print("*",end=" ")
#      print("\n")

#  x=int(input("enter no : "))
#  y=int(input("enter no : "))
#  while x<y:
#      print(i, end=" ")
#      x+=1
#  print("\n")

# x=int(input("enter no : "))
# y=int(input("enter no : "))
# for i in range(1,y):
#     j=0
#     while 0<y and j<i:
#         j+=1
#         print("*", end=" ")
#     print("\n")

# x=int(input("enter no : "))
# y=int(input("enter no : "))
# for i in range(x,y):
#     if (i%2==0):
#         print("even",i, "\n")
#     else:
#         print("odd",i, "\n")

# x=int(input("enter no : "))
# for i in range(1,x+1):
#     print(" "*(x-i),end=" ")
#     print("*"*(2*i-1))

# x=int(input("enter rows : "))
# i = 1
# while i <= x:
#     print("* " * i)
#     i += 1

# for i in range(10, 0, -1):
#     print(i)
#     i-=1

# wap prime no in prime or no 
# x=int(input("enter no : "))
# for i in range(1,x+1):
#     if (x%i==0):
#         print("divisible by",i)
#     else:
#         print("not divisible by",i)



# list=[6,4,25,2,5,6,7,8,9,10,11,12,13,14,15]
list=[]
n = float(input("How many numbers do you want to enter? "))
while n>0:
    for i in range(int(n)):
        if (n ==" "):
            print("please enter number")
        else:
            x=float(input("enter no : "))
            list.append(i)
    print(list)
    max_value = list[0]
    for i in list:
        if (i>max_value):
            max_value = i
    print("max value is", max_value)
    
    print("please enter number | press enter to exit")
    continue



