import UIKit

var greeting = "Hello, playground"

//Worksheet 1

print("Hi",10,12.25) // Comma Seperated gives a space in the output

//String Interpolation
// \(variablename)
var name="Rohith"
var grade=89.72
// Hello, Rohith! Your grade is 89.72
print("Hello, \(name)! Your grade is \(grade)")

var proLan="Swift"
print("I like the \(proLan) programming language")

var age=23
print("You are \(age) years old and in another \(age) years, you will be \(age*2)")

print("""
Hello folks,
I am in IOS Class
""")

// \r carriage return
print ("Hello All,\rWelcome to Swift programming")

print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")

print("Welcome to Swift Programming",terminator: "--")
print("Spring 2022")

// By default delimitter is space and we will use separator keyword to replace that comma
print("The list of numbers are",terminator: " == ")
print(1,2,3,4,5,6, separator: "_")
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

print("The new pattern is",terminator: " --- ")
print(1,2,3,4,5,6)

let  welcomeMessage : String = "Hello!"
print(welcomeMessage , "All")


//Worksheet 2
var mobilebrand="apple"
mobilebrand="samsung"
print(mobilebrand)

let pi=3.14
print(pi)

var age1 : Int = 23
age1 = age1 * 2
print(age1)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")


var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)

var fname : String = "Rohith Sai"
var lname="Ganguru"
print("My first name is",fname,terminator: " ")
print("and lastname is \(lname)")

print(1,2,3, separator: "$")
print(10.5,12.5,13.78, separator: "--")

//Worksheet 3

var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

var fullName = ("John","Smith")
var fiName = fullName.0
var laName = fullName.1
print(fiName , terminator : ",")
print(laName)

     
var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

     
let groceries = ("bread","onions",12,13.90)
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var f_name = "Joe"
var l_name = "Root"
(f_name , l_name) = (l_name , f_name)
print("First Name is \(f_name) and Last Name is \(l_name)")


var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)






