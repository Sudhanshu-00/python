
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

x=int(input("enter rows : "))
i = 1
while i <= x:
    print("|* " * i)
    i += 1
