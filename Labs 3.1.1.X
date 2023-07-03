#LAB 3.1.1.4

#This first line asks the user to enter an integer value
print("Type any number and press return")
n=int(input())
#this line determines whether the number put in is indeed less than or equal to 100 
#and returns true or false accordingly
print(n>=100)

#LAB3.1.1.10

#This line prompts the user to enter a flower name
flower = input("What is the best flower ever? ")
#The following statement uses the equality operator to determine what value has been 
#entered
if flower == "Spathiphyllum":
    print("Yes - Spathiphyllum is the best plant ever!")
#the line will detect the case sensitive entry and will return the above or below
elif flower == "spathiphyllum":
    print("No, I want a big Spathiphyllum!")
#this line is what is returned if neither of the conditions above are met
else:
    print("Spathiphyllum! Not", flower, "!")

#LAB 3.1.1.11

#the two input strings allow the user to enter data
income = float(input("Enter the annual income: "))
jury_service=str(input("Has this citizen carried out jury service, yes/no?"))
#this if statement determines what tax bracket the citizen pays
if income > 85528:
    tax = (income - 85528) * 0.32 + 14839.02 
else:
    tax = income * 0.18 - 556.02
#this if statement determines that tax be halved if a citizen has done jury service    
if jury_service == "yes" or jury_service == "Yes" or jury_service == "y" or jury_service == "Y":
    tax = tax*0.5
else:
    tax = tax
#this statement ensures citizens below the tax threshold do not pay any tax    
if tax <= 0.0:
    tax = 0.0
#this statement rounds the result to the nearest whole integer to 0 decimal points
tax = round(tax, 0)
print("This citizen's tax is:", tax, "thalers")
#point to note is that the jury service * 0.5 has to occur after tax is calculated to 
#ensure the variable tax is correct
