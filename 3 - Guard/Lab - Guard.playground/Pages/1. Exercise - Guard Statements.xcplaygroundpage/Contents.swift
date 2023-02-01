import UIKit
/*:
## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
 */
func calculateArea(x: Double, y :Double) -> Double?{
    //don't allow for negative values
    guard x> 0 && y > 0 else{
        print("One or more of the values given are less than 0")
        return nil
    }
        
    return x * y
}
calculateArea(x: 3, y: 3)
calculateArea(x: -3, y: 3)

//:  Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
func add(alpha : Int?, beta : Int?) -> Int?{
    guard let a : Int = alpha, let b :Int = beta else{
        print("One or more of the values given are nil")
        return nil
    }
    return a + b
}
add(alpha: 1, beta: 2)
add(alpha: nil, beta: 5)
/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`.

 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser() -> User? {
    
    guard let first = firstNameTextField.text,
          let last = lastNameTextField.text,
          let age = ageTextField.text else{
        return nil
    }
    var uuser = User(firstName: first, lastName: last, age: age)
    return user
}

//:  Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties.
var dude = createUser()
print("The user's name is \(dude?.firstName) \(dude?.lastName)"),and
they are \(age) years old")"

/*:
page 1 of 2  |  [Next: App Exercise - Guard](@next)
 */
