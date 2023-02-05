var mystuff : [Any] = [5,20.17, "Cookies", true, true, 708, 78.1, "Parrots", "Blanket"]
print (mystuff)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
for item in mystuff{
    if let number = item as? Int{
        print("The integer has a value of \(number)")
    }
    //else optionally bind a double calling it number
    else if let number = item as? Double{
        print("The double  has a value of \(number)")
    }
 //else optionally bind a string callin git word
        else if let word = item as? String{
            print("The word is: \(word)")
        }
//else optionally bind a bool calling it boolean
else if let boolean = item as? Bool{
    print("The boolean is: \(boolean)")
    }
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var myLookup : [String : Any] = ["Age": 18, "Name" : "Sammy", "Cost" : 29.95,
"True?" : false,]

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total : Double = 0.0
for value in myLookup.values{
    if let number = value as? Double{
        total += number
    }
}
