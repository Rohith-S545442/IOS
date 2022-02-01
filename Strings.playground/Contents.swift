var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
         print("The first item in clothes is socks")
}
else{
      print("socks is not the first item in clothes")
}
//Seperated the each word with double quotes
print(foodItems.split(separator: ","))

if clothes.contains(",") {
    print("Clothes contains more than one item")
    }
else{
     print("Clothes contain only one item")
}

//It removes the last 7 digits in the foodItems and print the rest
foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]
//It removes the first 8 letters at starting and print the rest
shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]

//It will remove the letter T where it is FirstIndex
clothes.remove(at: clothes.firstIndex(of: "T")!)

clothes.remove(at: clothes.firstIndex(of: "-")!)

print(clothes)

print(shoppingList)
//Here the shopping List contain value "The shopping list contains: Butter, Chocolate Spread" which was updated in the previous statement and stored that in Shopping List.
print("\(shoppingList), \(clothes)")
//Output : The shopping list contains: Butter, Chocolate Spread, Socks, shirts

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)

print(shoppingList[..<firstIndexOfR])


let password = "Demo@123"
    let confirmPassword = "Demo@123"

    if password == confirmPassword {
        print("Password matches")
    }else{
        print("Passwords doesn't matches")
}

let currentYear = "2021"
var enteredYear = "2020"

if currentYear.elementsEqual(enteredYear) == true
{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}

var vehiclePoweredBy = "Diesel"

 if vehiclePoweredBy != "Electricity" {
 print("Vehicle is not eco-friendly")
 }else{
 print("Vehicle is eco-friendly")
 }

let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"

if nameGiven.lowercased() == enteredName.lowercased(){
print("Entered name and given name matches with each other")
}else{
print("Entered name does not matches with the given name")
}

var course = "44643-Mobile Computing-iOS"
var out=course.index(after: course.firstIndex(of: "3")!)
print(course[..<out])




























