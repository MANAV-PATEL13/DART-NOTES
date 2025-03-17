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