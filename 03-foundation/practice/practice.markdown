Lesson 3 Practice - SWIFT
===================================

The goal of these assignments is to reinforce your understanding of objective-c's class system and to better acquaint you with the cocoa objects you will use in any iOS project.

## Assignment 1

Create a Single View Application. In the `viewDidLoad:` method assign the following string literal to a local N`String` variable: "This is a string literal with some text in it". Iterate through each character in the string using a for loop and log each individual character to the console.

Hint: use the standard for loop for this assignment

## Assignment 2

Create a Single View Application. Add two text fields to the interface and connect them to your view controller as outlets. Also connect both text field delegate outlets to your view controller. Remember, the delegate outlet is on the text field itself, so drag from the text field to the File’s Owner.

On the first text field, set the Return Key to "Next" in the Attributes Inspector. Finally, add a label underneath the text fields. Increase its height and in the Attributes inspector increase the number of lines to 2 or 3.

In your view controller implement the `UITextFieldDelegate` method:

```swift
- override func textFieldShouldReturn(textField: UITextField)
```

This should be familiar from previous assignments. Implement that method so that when the user presses the Next key after selecting the first text field, your application shifts the focus to the second text field. This is called changing the *first responder*.

When the user presses the Done key for the second text field, dismiss the keyboard and store the text values from the text fields in two local string variables. Combine them with a space in between the two strings. Log that value to the console and set the label’s text value to it.

Here’s an example implementation to get you started:

```swift
- override func textFieldShouldReturn(textField: UITextField) -> Bool
{
    if ( textField == self.firstTextField) {
        secondTextField.becomeFirstResponder()
    } else if ( textField == self.secondTextField ) {
        textfield.resignFirstResponder()
        // Add your custom code here
    }
    
    return true
}
```

![](https://s3.amazonaws.com/okcoders/ios/images/03-practice-01.jpg)

## Assignment 3

Create a Single View Application. Add two text fields to the interface and connect them to your view controller as outlets. Also connect both text field delegate outlets to your view controller. Remember, the delegate outlet is on the text field itself, so drag from the text field to the File’s Owner. On the first text field, set the Return Key to "Next" in the Attributes Inspector.

**Do not copy your project from Assignment 2!**

I want you to get into the habit of quickly creating custom interfaces and connecting the interface components to your code. Repeating an exercise is the best way to learn a new skill.

In your view controller implement the UITextFieldDelegate method:

```swift
- override func textFieldShouldReturn(textField: UITextField)
```

Implement it so that, like Assignment 2, the first responder changes when you click the Next button and the keyboard disappears when your click the Done button.

This time, perform a number of equality checks on the two text values from the text fields. In each case, log the result of the check, e.g. "The lowercase string values are equal" or "The lowercase string values are not equal".

1. Check if the strings are equal
2. Check if the strings are equal ignoring case
3. Convert both strings to lowercase and check their equality using the equality method
4. Get the integer values from the strings and check if they are equal. To elaborate, 
the Int constructor can take in a String, and returns an Optional Int (because the string might not be valid)
Handle this with 'guard let' statements, using optional binding

Instead of doing all these checks in the `textFieldShouldReturn:` delegate method, create a custom method for each check and call each of those methods from your delegate method. The methods should return a `Bool` value indicating the equality. For example:

```swift
- checkIfStringA(stringA: String, isEqualToStringB stringB: String) -> Bool

// etc.
```


Interface should be similar to the previous assignment's but without the text label.