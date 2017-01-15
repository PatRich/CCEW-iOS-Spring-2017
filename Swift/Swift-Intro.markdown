Swift
====================================
Swift is a new programming language for iOS, macOS, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility. Swift adopts safe programming patterns and adds modern features to make programming easier, more flexible, and more fun. Swift’s clean slate, backed by the mature and much-loved Cocoa and Cocoa Touch frameworks, is an opportunity to reimagine how software development works.

>Introduction to the syntax followed by a look at creating custom classes.

Tradition suggests that the first program in a new language should print the words “Hello, world!” on the screen. In Swift, this can be done in a single line:

```
 print("Hello, world!")
```

# Intro to Swift code

To declare a variable, use the 'var' keyword.
```
var myVariable = 42
myVariable = 50
```

The 'Swift' way is to assign fields by default as constants. This can be done in other languages like Java
```
// Java 
final int javaConst = 3;

// Swift
let maximumNumberOfLoginAttempts = 10
```

To declare a constant, use the 'let' keyword. This can be read as:
"Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10"
>You should <em>always</em> declare a stored value as let if the stored value will never change.
Attempting to change a constant results in a compiler error.

Notice how you do not declare a type in Swift. Swift is smart, and uses 'Type inferencing' 
to determine what type annotation a field is. If you hovered over this variable in Xcode,
you could find that the field 'maximumNumberOfLoginAttempts' is of type 'Int.' You can manually
define a value as a certain type, and in some cases this can improve compile time of your project.

```
let minValue: Double = 1500.01
```

>It is best practice to allow the swift compiler to determine a values type annotation

```
var numberOfLoginsAttempts = 400
numberOfLoginsAttempts += 1
```

Also notice how there are no semi-colons in Swift. In general,
you should never have to use semi-colons, although you can use semi-colons 
to separate two statements on the same line

```
let minimumThreshold = 400; var name = "John"
```

In this case the string is created inline, as a literal. 

>Notice how many variable names are quite long. Xcode has 
>excellent code completion. Try to make your code self-documenting,
>it will more concise and clean.

# Types
Primative types:
- Int
- Double / Float
- Bool
- String
- (Tuples)

Collection Types:
- Array
- Set
- Dictionary

Advanced topics:
- Optionals / Optional Chaining
- Closures
- Reference Counting

# String Interpolation

Use \() inside a string to allow for expressions and values to be included inside strings.

```
var name = "John"
let interpolatedString = "Hello \(name), I am the swift compiler"
// interpolatedString is a string constant with the value "Hello Jake, I am the swift compiler"
```
