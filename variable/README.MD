# Dart Variables and Data Types

## 1. What Are Variables in Dart?
In Dart, a variable is a named reference to an object stored in memory. Unlike some languages where variables might directly hold primitive values, Dart variables hold references. This means that even when a variable seems to store a simple value (like an integer or a string), it actually points to an object that holds that value.

---

## 2. Type Inference vs. Explicit Typing
Dart is statically typed but supports both explicit type annotations and type inference:

### Type Inference with `var`:
When you declare a variable with `var`, the compiler infers the type from the assigned value at compile time:

```dart
var name = 'Bob'; // Dart infers type String.
var age = 25;     // Dart infers type int.
```

Although concise, once inferred, the type cannot change. This means:

```dart
var name = 'Alice';
// name = 42; // Error: Cannot assign an int to a String variable.
```

### Explicit Typing:
You may declare the type explicitly, which enhances code clarity, especially for public APIs or class members:

```dart
String greeting = 'Hello';
int year = 2025;
Object flexible = 'Can hold any object type';
```

Explicit typing is also useful when the initial value might be ambiguous or when you plan to use a broader type (like `Object` or `dynamic`) later.

### Dart provides a rich type system that includes:
- **Numbers**: `int`, `double`, and `num` for numeric operations.
- **Boolean**: `bool` for true/false values.
- **String**: For text data.
- **Collections**: `List`, `Set`, and `Map` for various data grouping needs.
- **Runes**: To work with Unicode code points.
- **Symbols**: For identifier names used in reflection.
- **Dynamic**: For flexible types with runtime type changes.
- **Object**: As the base type for all Dart types.

---

## 3. Numbers
Dart has three main numeric types: `int`, `double`, and `num`.

### `int`:
Represents whole numbers (both positive and negative).

```dart
int wholeNumber = 42;
print('Int: \$wholeNumber'); // Output: Int: 42
```

### `double`:
Represents numbers with a decimal point (floating-point numbers).

```dart
double pi = 3.14159;
print('Double: \$pi'); // Output: Double: 3.14159
```

### `num`:
A common superclass for both `int` and `double`. It allows you to store either type.

```dart
num someNumber = 10;     // Could be an int
print('Num as int: \$someNumber'); // Output: Num as int: 10

someNumber = 10.5;       // Now a double
print('Num as double: \$someNumber'); // Output: Num as double: 10.5
```

---

## 4. Boolean
The `bool` type represents a true/false value.

```dart
bool isDartFun = true;
print('Boolean: \$isDartFun'); // Output: Boolean: true
```

Booleans are often used in control flow statements (`if`, `while`, etc.).

---

## 5. Strings
A `String` is a sequence of characters used to represent text.

```dart
String greeting = 'Hello, Dart!';
print('String: \$greeting'); // Output: String: Hello, Dart!
```

Strings can be manipulated using various built-in methods such as `substring`, `split`, and `replace`.

---

## 6. Collections
Dart provides several collection types:

### a. List
A `List` is an ordered collection of items. You can specify the type of elements in the list.

```dart
List<String> fruits = ['Apple', 'Banana', 'Cherry'];
print('List: \$fruits'); // Output: List: [Apple, Banana, Cherry]
```

### b. Set
A `Set` is an unordered collection of unique items. Duplicate entries are automatically removed.

```dart
Set<int> uniqueNumbers = {1, 2, 5, 3, 2};
print('Set: \$uniqueNumbers'); // Output: Set: {1, 2, 3, 5}
```

### c. Map
A `Map` is a collection of key-value pairs. The keys must be unique.

```dart
Map<String, int> ages = {
  'Alice': 30,
  'Bob': 25,
  'Charlie': 35,
};
print('Map: \$ages'); // Output: Map: {Alice: 30, Bob: 25, Charlie: 35}
```

---

## 5.Runes
Runes represent Unicode code points of a string. They are useful for handling characters outside the 
basic multilingual plane (e.g., emojis). 
```dart
String heart = '❤️'; // print decimal value of characters  
Runes runes = heart.runes; 
print('Runes: \${runes.toList()}'); // Output: Runes: [10084, 65039] 
```
Runes allow you to work with the numerical representation of Unicode characters.

---
## 6. Symbols 
A Symbol represents an operator or identifier name. It is mainly used in APIs that rely on reflection. 
```dart
Symbol mySymbol = #example; 
print('Symbol: \$mySymbol'); // Output: Symbol: Symbol("example") 
```
Symbols are rarely used in everyday Dart programming but can be useful in advanced scenarios.
---
## 7. Dynamic 
The dynamic type allows a variable to hold any type of value, and its type can change over time. 
However, using dynamic bypasses compile-time type checking. 
```dart
dynamic variable = 'Hello, world!'; 
print('Dynamic (as String): \$variable'); // Output: Dynamic (as String): Hello, world! 
variable = 123; 
print('Dynamic (as int): \$variable'); // Output: Dynamic (as int): 123 
```
Use dynamic sparingly as it can make code less predictable and harder to maintain. 

## 8. Object 
The Object type is the base type for all Dart objects. Every type in Dart is a subclass of Object. 
```dart
Object obj = 'I am an object'; 
print('Object: \$obj'); // Output: Object: I am an object 
```
Even though Object is a supertype of all classes, explicit casting may be necessary when you need a 
more specific type.

## 9. Null 
### What is Null? 
- **Null is a Unique Object:** 
  In Dart, null is the sole instance of the Null class. It represents a lack of value, similar to how "nothing" is represented in other languages.
- **Before Null Safety:** 
  Historically, any variable in Dart could be assigned null, which sometimes led to runtime errors when methods or properties were accessed on a null value.
- **After Null Safety:** 
  With the introduction of sound null safety (starting with Dart 2.12), variables are non-nullable by default. This means a variable cannot hold a null value unless it is explicitly declared as nullable by appending a `?` to its type.

### How Null Works in Dart 
#### Non-nullable Variables:
By default, if you declare a variable without marking it as nullable, Dart expects it to always have a valid, non-null value. 
```dart
String name = 'Alice';
// name cannot be assigned null later.
```

#### Nullable Variables:
If you want a variable to be able to hold null, you must declare it with a `?`. This tells Dart that the variable might be null at some point. 
```dart
String? name;
print(name); // Outputs: null 
name = 'Bob';
print(name); // Outputs: Bob 
```

### Null-Aware Operators:
To safely work with nullable variables, Dart provides several null-aware operators: 

#### Null-Aware Access (`?.`): 
Safely access a property or method on an object that might be null.  
```dart
String? name;
print(name?.length); // If name is null, this evaluates to null.
```
   When you try to access name?.length:  
   o If name is not null: The length property of the string would be accessed, 
  and the length of the string would be printed. <br>
  o If name is null: The ?. operator prevents a NullPointerException and 
  instead evaluates the expression as null. 
  Since name is null in this case, the expression name?.length evaluates to 
  null, and that's what gets printed.

#### Default Value Operator (`??`): 
Provide a default value if an expression is null.  
```dart
String? name;
print(name ?? 'No name provided'); // Prints the default message if name is null.
```

#### Null Assertion Operator (`!`): 
Assert that a value is non-null (and throw a runtime error if it is null).  
```dart
String? name = 'Dart';
print(name!.length); // Asserts name is non-null.
```

### Why Managing Null is Important 
- **Preventing Runtime Errors:**
  Accessing methods or properties on a null value can lead to crashes (known as null dereference errors).
- **Improving Code Safety:**
  With null safety, many potential bugs are caught at compile time rather than at runtime.
- **Enhanced Code Clarity:**
  Declaring whether a variable can be null makes your code’s intent clearer to both the compiler and other developers.

### Summary 
- Null represents "no value" and is an instance of the Null class.
- With null safety, variables are non-nullable by default unless explicitly declared as nullable (using `?`).
- Null-aware operators (`?.`, `??`, `!`) are essential tools for writing safe code when dealing with nullable values.
- Properly managing null helps prevent runtime errors and makes your code more robust.




---
# Late Variables

The `late` modifier is a key part of Dart’s null safety, and it addresses two main scenarios:

## Deferred (Postponed) Initialization

Sometimes you know that a variable will be assigned a non-null value—but not at the point of declaration. For example, when you have a non-nullable instance variable that will be set later (perhaps in a method or during runtime logic), you can mark it as `late`:

```dart
late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}
```

This tells Dart, “Trust me, I’ll set this variable before I use it.” However, if you try to read a `late` variable before it has been given a value, Dart will throw a runtime error. This adds a layer of safety by ensuring that a non-nullable variable is indeed non-null when accessed.

## Lazy Initialization

If you provide an initializer along with the `late` keyword, that initializer doesn’t run immediately. Instead, it executes the first time the variable is used. This is very useful when the initialization is expensive or when the variable might not be needed during every execution path:

```dart
late String temperature = readThermometer();
```

Here, the function `readThermometer()` is called only if—and when—the variable `temperature` is accessed for the first time.

# Final and Const

## What They Mean

### Final Variables

When you declare a variable as `final`, you tell Dart that the variable’s value can be set only once. This means you can assign it at runtime—but after it’s been set, any further attempt to change it will result in an error. A key point is that a `final` variable doesn’t have to be known at compile time; it can be computed later, such as within a function or after some asynchronous work.

```dart
final currentTime = DateTime.now();
// Later in the code, trying to assign a new value to currentTime would be an error.
```

### Const Variables

The `const` keyword, on the other hand, is used to define compile-time constants. A `const` variable’s value is determined during compilation, and it must be a literal or a compile-time expression. Because its value is fixed at compile time, a `const` variable is implicitly `final`.

```dart
const pi = 3.14159;
const list = [1, 2, 3];
```

Here, `pi` is known at compile time, and you can also declare collections as `const` so that the entire structure becomes deeply immutable.

## Key Differences

### When the Value Is Set

- **Final**: The value is set only once, but not necessarily at compile time. It’s common to initialize a `final` variable during runtime (for example, reading the current date/time or the result of a computation).
- **Const**: The value is set at compile time. You cannot use a `const` variable for values that are determined during program execution.

### Mutability and Immutability

Example:

```dart
const pi = 3.145;

void main() {
  final String nickname = 'Bobby';
  // nickname = 'hi'; // This would show an error
  print(nickname);
  print('PI = $pi');

  final name = 'Bob';
  final currentTime = DateTime.now();
  // Trying to assign a new value to currentTime would be an error.
}
```

# Wildcard Variables

## What Are Wildcard Variables?

Wildcard variables are a Dart language feature introduced in Dart 3.7. They allow you to declare a variable using an underscore (`_`) as a placeholder. When you use `_` as a variable name, you’re indicating that the value is not needed or will not be used. Essentially, it creates a non-binding variable—one that is present only to satisfy syntax requirements but isn’t accessible in your code.

## Why Use Wildcard Variables?

Wildcard variables serve several important purposes:

### Avoiding Unused Variables

When you need to satisfy the syntax of the language (for instance, in a `for` loop or a `catch` clause) but you don’t actually care about the value, using `_` makes your intent clear.

```dart
// In a loop where the index isn’t needed:
for (var _ in list) {
  // Do something that doesn't require the element.
}
```

### Reducing Clutter and Naming Collisions

By using `_`, you avoid declaring and potentially clashing with other variable names. Multiple wildcard variables can coexist in the same scope without causing conflicts.

### Expressing Intent

When you see `_` as a parameter or variable, it immediately signals to anyone reading the code that this value is intentionally being ignored.

## Common Use Cases

### Local Variable Declarations

```dart
void main() {
  // Calling a function for its side effect, but we don't need the result.
  // By assigning the result to '_', we indicate that we intentionally ignore it.
  var _ = performSideEffect();
  // Continue with other code...
}

void performSideEffect() {
  print("Side effect executed");
}
```

### For Loop Variable

```dart
void main() {
  // Suppose we want to print "Hello" 5 times:
  // We don't need to use the loop variable, so we use '_'.
  for (var _ in Iterable.generate(5)) {
    print("Hello");
  }
}
```

### Catch Clauses

### Generic and Function Type Parameters

---

## Summary
- Dart is statically typed, supporting both inferred (`var`) and explicit types.
- Numbers: `int`, `double`, and `num`.
- Collections: `List`, `Set`, `Map`.
- Null safety is enforced; use `?`, `!.`, and `??` to handle nullable values.
- `final` is runtime constant, `const` is compile-time constant.
- Wildcard `_` is useful for unused variables.

Dart's strong type system, along with null safety and collection types, makes it a powerful and safe language for modern applications! 🚀