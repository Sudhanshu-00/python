
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
# list=[]
# n = float(input("How many numbers do you want to enter? "))
# while n>0:
#     for i in range(int(n)):
#         if (n ==" "):
#             print("please enter number")
#         else:
#             x=float(input("enter no : "))
#             list.append(i)
#     print(list)
#     max_value = list[0]
#     for i in list:
#         if (i>max_value):
#             max_value = i
#     print("max value is", max_value)
    
#     print("please enter number | press enter to exit")
#     continue

def reverse_number(n):
    return int(str(n)[::-1])

def is_palindrome(n):
    return str(n) == str(n)[::-1]

def is_armstrong(n):
    num_digits = len(str(n))
    return sum(int(digit) ** num_digits for digit in str(n)) == n

def sum_of_digits(n):
    return sum(int(digit) for digit in str(n))

def fibonacci_series(limit):
    fib_series = [0, 1]
    for _ in range(limit - 2):
        fib_series.append(fib_series[-1] + fib_series[-2])
    return fib_series

while True:
    print("\nChoose an option:")
    print("1. Reverse Number")
    print("2. Check Palindrome")
    print("3. Check Armstrong Number")
    print("4. Sum of Digits")
    print("5. Fibonacci Series")
    print("6. Exit")

    choice = input("Enter your choice: ")
    
    if choice == "6":
        print("Exiting program. Goodbye!")
        break

    number = int(input("Enter a number: "))

    if choice == "1":
        print(f"Reversed Number: {reverse_number(number)}")
    elif choice == "2":
        print(f"Is Palindrome? {'Yes' if is_palindrome(number) else 'No'}")
    elif choice == "3":
        print(f"Is Armstrong Number? {'Yes' if is_armstrong(number) else 'No'}")
    elif choice == "4":
        print(f"Sum of Digits: {sum_of_digits(number)}")
    elif choice == "5":
        terms = number
        print(f"Fibonacci Series ({terms} terms): {fibonacci_series(terms)}")
    else:
        print("Invalid choice, please try again.")

#wap to take input from user and print the sum of all numbers with using function

# n = int(input("Enter a number: "))
# # Call the function and print the result
# def sum_of_numbers(n):
#     total = 0
#     for i in range(1, n + 1):
#         total += i
#     return total
# result = sum_of_numbers(n)
# print(f"The sum of numbers from 1 to {n} is: {result}")



# wap to take input from user and print of that sum of digits of all numbers with using function
# n = int(input("Enter a number: "))
# # # Call the function and print the result
# def sum_of_digits(n):
#     total = 0
#     while n > 0:
#         digit = n % 10
#         total += digit
#         n //= 10
#     return total
# result = sum_of_digits(n)
# print(f"The sum of digits of {n} is: {result}")