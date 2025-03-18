**1.  Dart's `Number` types include **`int`** and **`double`**, both of which are subtypes of `num`. Let's break it down properly, covering all available constructors and use cases, from basic to advanced.

---

##  1. `num` Class (Superclass of `int` and `double`)**
Dart has a `num` class, which acts as the base class for both `int` and `double`. This means you can store either integer or floating-point values inside a `num` variable.

### **Constructors of `num`**
- **`num.parse(String input)`** → Converts a string into a `num` (returns either `int` or `double`).
- **`num.tryParse(String input)`** → Same as `parse`, but returns `null` if the input is invalid.

```dart
void main() {
  num number1 = num.parse('42'); // Parses an integer
  num number2 = num.parse('3.14'); // Parses a double

  print(number1); // 42
  print(number2); // 3.14

  num? number3 = num.tryParse('invalid'); // Returns null
  print(number3); // null
}
```

---

## **2. `int` Class (Integer Type)**
The `int` type in Dart represents whole numbers.

### **Constructors of `int`**
- **`int.parse(String input)`** → Converts a string into an `int`. Throws an error if invalid.
- **`int.tryParse(String input)`** → Same as `parse`, but returns `null` instead of throwing an error.

```dart
void main() {
  int number1 = int.parse('100');
  print(number1); // 100

  int? number2 = int.tryParse('invalid');
  print(number2); // null (no error thrown)
}
```

### **Advanced: Binary, Octal, Hexadecimal Parsing**
Dart allows parsing numbers from different bases.

```dart
void main() {
  int binary = int.parse('1101', radix: 2); // Binary to decimal
  int hex = int.parse('FF', radix: 16); // Hex to decimal

  print(binary); // 13
  print(hex); // 255
}
```

---

## **3. `double` Class (Floating-Point Type)**
The `double` type represents decimal numbers.

### **Constructors of `double`**
- **`double.parse(String input)`** → Converts a string into a `double`. Throws an error if invalid.
- **`double.tryParse(String input)`** → Same as `parse`, but returns `null` if invalid.

```dart
void main() {
  double number1 = double.parse('12.34');
  print(number1); // 12.34

  double? number2 = double.tryParse('invalid');
  print(number2); // null
}
```

### **Advanced: Exponential Notation**
Dart allows scientific notation.

```dart
void main() {
  double expNum = double.parse('1.23e2'); // 1.23 * 10^2
  print(expNum); // 123.0
}
```

---

## **4. Additional Features**
- **Checking for Integer or Double**
  ```dart
  void main() {
    num value = 10.5;
    print(value is int); // false
    print(value is double); // true
  }
  ```

- **Converting Between `int` and `double`**
  ```dart
  void main() {
    int a = 10;
    double b = a.toDouble();
    print(b); // 10.0

    double c = 10.5;
    int d = c.toInt(); // Truncates (removes decimal part)
    print(d); // 10
  }
  ```

---

## **Conclusion**
- `num` is the superclass of `int` and `double`.
- `int` represents whole numbers and supports parsing with `parse` and `tryParse`.
- `double` represents floating-point numbers and supports similar parsing methods.
- Both support conversions and special formatting.

---

What's the next datatype you want to cover?

---
### **Dart `String` Class – All Constructors & Examples (Basic to Advanced)**  

The `String` class in Dart provides multiple ways to create and manipulate text. Let's go through all its constructors, from basic to advanced, with proper examples.

---

## **1. `String` Class Overview**  
A `String` in Dart represents a sequence of UTF-16 code units (characters). It supports multiple ways of initialization and creation.

---

## **2. Constructors of `String`**

| Constructor | Description |
|------------|-------------|
| `String.fromCharCode(int charCode)` | Creates a single-character string from a Unicode code unit. |
| `String.fromCharCodes(Iterable<int> charCodes)` | Creates a string from a list of Unicode code units. |
| `String.fromEnvironment(String name, {String defaultValue})` | Fetches an environment variable as a string (used in Dart VM, not in Flutter). |

---

### **3.1. Basic String Initialization (Direct Assignment)**  
The simplest way to create a `String` is by using single or double quotes.

```dart
void main() {
  String str1 = 'Hello, Dart!';
  String str2 = "Flutter is amazing!";
  
  print(str1); // Hello, Dart!
  print(str2); // Flutter is amazing!
}
```

---

### **3.2. Using `String.fromCharCode(int charCode)`**
This constructor creates a string from a single Unicode code unit.

```dart
void main() {
  String char = String.fromCharCode(65); // Unicode for 'A'
  print(char); // A
}
```

---

### **3.3. Using `String.fromCharCodes(Iterable<int> charCodes)`**  
This constructor creates a string from multiple Unicode values.

```dart
void main() {
  String word = String.fromCharCodes([72, 101, 108, 108, 111]); // "Hello"
  print(word); // Hello
}
```

---

### **3.4. Using `String.fromEnvironment(String name, {String defaultValue})`**  
This is useful for reading compile-time environment variables.  
⚠️ **This only works in Dart VM (CLI apps), not in Flutter apps.**

```dart
void main() {
  const String envValue = String.fromEnvironment('MY_ENV', defaultValue: 'Default Value');
  print(envValue); // Prints 'Default Value' if MY_ENV is not set.
}
```

---

## **4. Advanced String Operations**
### **4.1. Multi-line Strings (`'''` or `"""`)**
```dart
void main() {
  String multiLine = '''This is
  a multi-line
  string.''';
  
  print(multiLine);
}
```

---

### **4.2. String Interpolation (`$` and `${}`)**
```dart
void main() {
  String name = 'Dart';
  print('Hello, $name!'); // Hello, Dart!
  print('Length: ${name.length}'); // Length: 4
}
```

---

### **4.3. String Buffer (Efficient String Manipulation)**
Use `StringBuffer` when modifying strings frequently.

```dart
void main() {
  StringBuffer sb = StringBuffer();
  sb.write('Hello');
  sb.write(', Dart!');
  
  print(sb.toString()); // Hello, Dart!
}
```

---

### **4.4. Encoding & Decoding Strings**
```dart
import 'dart:convert';

void main() {
  String text = 'Hello';
  List<int> utf8Encoded = utf8.encode(text);
  print(utf8Encoded); // [72, 101, 108, 108, 111]

  String decoded = utf8.decode(utf8Encoded);
  print(decoded); // Hello
}
```

---

## **5. Conclusion**
- **Basic Constructors:** Direct assignment (`''`, `""`).
- **Unicode-based Constructors:** `fromCharCode()`, `fromCharCodes()`.
- **Environment Variables:** `fromEnvironment()`.
- **Advanced String Manipulation:** Interpolation, Multi-line strings, `StringBuffer`, UTF-8 encoding.

---

What datatype should we cover next?
---
---
### **Dart `List` Class – All Constructors & Examples (Basic to Advanced)**  

The `List` class in Dart is a collection that can hold ordered objects. Dart provides multiple constructors to create and manipulate lists efficiently. Let's go through each constructor with proper examples.

---

## **1. `List` Class Overview**  
A `List` in Dart is an ordered collection of elements and can be **fixed-length** or **growable**.

---

## **2. Constructors of `List`**  

| Constructor | Description |
|------------|-------------|
| `List.empty({bool growable = false})` | Creates an empty list. Set `growable: true` to allow adding elements. |
| `List.filled(int length, E fill, {bool growable = false})` | Creates a list with a fixed size and fills it with a value. |
| `List.generate(int length, E Function(int index), {bool growable = true})` | Generates a list using a function. |
| `List.of(Iterable elements, {bool growable = true})` | Creates a copy of an existing iterable. |
| `List.unmodifiable(Iterable elements)` | Creates an unmodifiable list (read-only). |

---

### **3.1. Using `List.empty()`**
This creates an empty list, which can be growable or fixed.

```dart
void main() {
  List<int> fixedEmpty = List.empty(growable: false); // Fixed-length empty list
  print(fixedEmpty); // []

  List<int> growableEmpty = List.empty(growable: true); // Growable empty list
  growableEmpty.add(5);
  print(growableEmpty); // [5]
}
```

---

### **3.2. Using `List.filled()`**  
Creates a list of a specific size, initialized with a default value.

```dart
void main() {
  List<int> numbers = List.filled(5, 0);
  print(numbers); // [0, 0, 0, 0, 0]

  numbers[2] = 10;
  print(numbers); // [0, 0, 10, 0, 0]
}
```

---

### **3.3. Using `List.generate()`**  
Creates a list using a function.

```dart
void main() {
  List<int> squares = List.generate(5, (index) => index * index);
  print(squares); // [0, 1, 4, 9, 16]
}
```

---

### **3.4. Using `List.of()`**  
Creates a copy of an iterable.

```dart
void main() {
  List<int> original = [1, 2, 3];
  List<int> copy = List.of(original);

  copy.add(4);
  print(copy); // [1, 2, 3, 4]
}
```

---

### **3.5. Using `List.unmodifiable()`**  
Creates a list that **cannot be modified**.

```dart
void main() {
  List<int> readOnly = List.unmodifiable([1, 2, 3]);

  print(readOnly); // [1, 2, 3]

  // readOnly.add(4); // This will throw an error
}
```

---

## **4. Advanced List Operations**

### **4.1. Adding Elements to a Growable List**
```dart
void main() {
  List<int> numbers = [];
  numbers.add(10);
  numbers.addAll([20, 30, 40]);

  print(numbers); // [10, 20, 30, 40]
}
```

---

### **4.2. Removing Elements**
```dart
void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  names.remove('Bob');

  print(names); // ['Alice', 'Charlie']
}
```

---

### **4.3. Sorting a List**
```dart
void main() {
  List<int> numbers = [5, 2, 8, 1, 3];
  numbers.sort();
  print(numbers); // [1, 2, 3, 5, 8]
}
```

---

### **4.4. Filtering a List (`where`)**
```dart
void main() {
  List<int> numbers = [10, 15, 20, 25];
  var filtered = numbers.where((n) => n > 15);
  
  print(filtered.toList()); // [20, 25]
}
```

---

### **4.5. Mapping a List (`map`)**
```dart
void main() {
  List<int> numbers = [1, 2, 3];
  var squared = numbers.map((n) => n * n);

  print(squared.toList()); // [1, 4, 9]
}
```

---

## **5. Conclusion**
- `List.empty()` → Creates an empty list.
- `List.filled()` → Creates a fixed-size list with default values.
- `List.generate()` → Generates a list using a function.
- `List.of()` → Copies an existing iterable.
- `List.unmodifiable()` → Creates a read-only list.

---

What datatype should we cover next?

---

---

### **Dart `bool` Class – All Constructors & Examples (Basic to Advanced)**  

The `bool` class in Dart represents boolean values (`true` or `false`). Unlike `int`, `double`, or `String`, `bool` has **no explicit constructors** because it only has two possible values: `true` and `false`.

---

## **1. `bool` Class Overview**  
- `bool` is a special built-in type in Dart.
- It can only have two values: `true` or `false`.
- You cannot create a `bool` using a constructor like `bool(true)`, instead, you directly assign `true` or `false`.

```dart
void main() {
  bool isDartAwesome = true;
  bool isJavaScriptBetter = false;

  print(isDartAwesome); // true
  print(isJavaScriptBetter); // false
}
```

---

## **2. Boolean Expressions**
### **2.1. Logical Operators (`&&`, `||`, `!`)**
```dart
void main() {
  bool a = true;
  bool b = false;

  print(a && b); // false (AND)
  print(a || b); // true (OR)
  print(!a); // false (NOT)
}
```

---

### **2.2. Boolean from Expressions**
You can assign a boolean value based on an expression.

```dart
void main() {
  int x = 10;
  bool isPositive = x > 0;

  print(isPositive); // true
}
```

---

## **3. Converting to Boolean**
Dart **does NOT allow implicit boolean conversion** from other types.  
Unlike Python (`if 1:` is valid) or JavaScript (`if ("string")` is valid), Dart **requires explicit comparison**.

✅ **Correct way:**
```dart
void main() {
  int number = 5;
  bool isValid = number != 0; // Explicit comparison

  print(isValid); // true
}
```

❌ **Wrong way (Dart will throw an error)**:
```dart
void main() {
  int number = 5;
  if (number) { // ERROR: Condition must be a bool
    print('Number is non-zero');
  }
}
```

---

## **4. Boolean Methods & Advanced Usage**
### **4.1. `bool.hasEnvironment()`**
- Checks if an environment variable is set (Only works in Dart VM, **not Flutter**).

```dart
void main() {
  bool isDebug = bool.hasEnvironment('DEBUG');
  print(isDebug); // false (unless 'DEBUG' is set at runtime)
}
```

---

### **4.2. Using Boolean in Collections (`List<bool>`, `Map<bool, String>`)**
```dart
void main() {
  List<bool> flags = [true, false, true];
  print(flags); // [true, false, true]

  Map<bool, String> boolMap = {true: 'Yes', false: 'No'};
  print(boolMap[true]); // Yes
}
```

---

### **4.3. Boolean Short-Circuiting**
- Dart **short-circuits** logical operations (`&&`, `||`).  
- It stops evaluating once the result is determined.

```dart
void main() {
  bool result = false && expensiveOperation();
  print(result); // false (expensiveOperation() is NOT called)

  result = true || expensiveOperation();
  print(result); // true (expensiveOperation() is NOT called)
}

bool expensiveOperation() {
  print('This should not print');
  return true;
}
```

---

## **5. Conclusion**
- **No explicit constructors** (`true` and `false` are literals).
- **Logical operations** (`&&`, `||`, `!`) work as expected.
- **Explicit comparisons** are required (`if (x != 0)` instead of `if (x)`).
- **Boolean short-circuiting** improves performance.
- **`bool.hasEnvironment()`** is useful in Dart VM.

---

Which datatype should we cover next?

---

---
### **Dart `Set` Class – All Constructors & Examples (Basic to Advanced)**  

A `Set` in Dart is an **unordered collection of unique elements**. Unlike `List`, a `Set` does **not allow duplicate values** and is optimized for fast lookups.

---

## **1. `Set` Class Overview**  
- **Elements are unique** (no duplicates).
- **Unordered collection** (no specific order).
- **Supports operations like union, intersection, and difference.**

---

## **2. Constructors of `Set`**  

| Constructor | Description |
|------------|-------------|
| `Set<E>()` | Creates an empty growable set. |
| `Set.identity()` | Creates a set that uses identity comparison (`==` and `hashCode`). |
| `Set.from(Iterable elements)` | Creates a set from an iterable (removes duplicates). |
| `Set.of(Iterable<E> elements)` | Creates a new set from an iterable (same as `from`). |
| `Set.unmodifiable(Iterable elements)` | Creates an immutable (read-only) set. |

---

### **3.1. Using `Set()` (Empty Set)**
Creates an empty growable set.

```dart
void main() {
  Set<int> numbers = Set();
  numbers.add(10);
  numbers.add(20);
  numbers.add(10); // Duplicate, will not be added

  print(numbers); // {10, 20}
}
```

---

### **3.2. Using `Set.identity()`**
- Uses **object identity** instead of `==` for comparison.
- Useful when working with objects.

```dart
void main() {
  Set<String> names = Set.identity();
  names.add('Alice');
  names.add('Alice'); // Still considered duplicate

  print(names); // {'Alice'}
}
```

---

### **3.3. Using `Set.from(Iterable)`**
Creates a set from another iterable (removes duplicates).

```dart
void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4];
  Set<int> uniqueNumbers = Set.from(numbers);

  print(uniqueNumbers); // {1, 2, 3, 4}
}
```

---

### **3.4. Using `Set.of(Iterable<E>)`**
Same as `Set.from()`, but type-safe.

```dart
void main() {
  var words = Set.of(['hello', 'world', 'hello']);
  print(words); // {'hello', 'world'}
}
```

---

### **3.5. Using `Set.unmodifiable(Iterable)`**
Creates a **read-only set**.

```dart
void main() {
  Set<int> immutableSet = Set.unmodifiable([1, 2, 3]);

  print(immutableSet); // {1, 2, 3}
  
  // immutableSet.add(4); // ❌ ERROR: Unsupported operation
}
```

---

## **4. Advanced Set Operations**
### **4.1. Adding and Removing Elements**
```dart
void main() {
  Set<int> numbers = {10, 20, 30};
  numbers.add(40); // Add an element
  numbers.remove(20); // Remove an element

  print(numbers); // {10, 30, 40}
}
```

---

### **4.2. Checking Element Existence (`contains()`)**
```dart
void main() {
  Set<String> names = {'Alice', 'Bob', 'Charlie'};
  print(names.contains('Alice')); // true
  print(names.contains('David')); // false
}
```

---

### **4.3. Set Operations (`union`, `intersection`, `difference`)**
```dart
void main() {
  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 4, 5};

  print(setA.union(setB)); // {1, 2, 3, 4, 5}  (combines both sets)
  print(setA.intersection(setB)); // {3}  (common elements)
  print(setA.difference(setB)); // {1, 2}  (elements in setA but not in setB)
}
```

---

### **4.4. Iterating Over a Set**
```dart
void main() {
  Set<String> fruits = {'Apple', 'Banana', 'Cherry'};
  
  for (var fruit in fruits) {
    print(fruit);
  }
}
```

---

## **5. Conclusion**
- `Set<E>()` → Creates an empty set.
- `Set.identity()` → Uses identity comparison.
- `Set.from(iterable)` / `Set.of(iterable)` → Creates a set from another iterable.
- `Set.unmodifiable(iterable)` → Creates a read-only set.
- Supports **fast lookups** and **set operations** (union, intersection, difference).

---

Which datatype should we cover next?


### **Dart `Map` Class – All Constructors & Examples (Basic to Advanced)**  

A `Map` in Dart is a **collection of key-value pairs**. Each key in a `Map` is unique, and it allows quick lookups, insertions, and deletions.

---

## **1. `Map` Class Overview**  
- A **key-value** data structure (`{key: value}`).
- **Keys are unique**, but values can be duplicated.
- **Efficient for lookups** compared to lists.

---

## **2. Constructors of `Map`**  

| Constructor | Description |
|------------|-------------|
| `Map<K, V>()` | Creates an empty growable map. |
| `Map.identity()` | Creates a map that uses **object identity** for keys. |
| `Map.from(Map other)` | Creates a new map from an existing map. |
| `Map.of(Map<K, V> other)` | Creates a new map from another map (type-safe). |
| `Map.fromEntries(Iterable<MapEntry<K, V>> entries)` | Creates a map from `MapEntry` objects. |
| `Map.fromIterable(Iterable iterable, {K Function(dynamic)? key, V Function(dynamic)? value})` | Creates a map from an iterable. |
| `Map.unmodifiable(Map other)` | Creates a read-only map. |

---

### **3.1. Using `Map()` (Empty Map)**
Creates an empty, growable map.

```dart
void main() {
  Map<String, int> ages = {};
  ages['Alice'] = 25;
  ages['Bob'] = 30;

  print(ages); // {Alice: 25, Bob: 30}
}
```

---

### **3.2. Using `Map.identity()`**
- Uses **object identity** instead of `==` for key comparison.

```dart
void main() {
  Map<String, int> identityMap = Map.identity();
  identityMap['Alice'] = 20;
  identityMap['Alice'] = 30; // Still replaces, as key is same

  print(identityMap); // {Alice: 30}
}
```

---

### **3.3. Using `Map.from()`**
Creates a new map from another map.

```dart
void main() {
  Map<String, int> original = {'Alice': 20, 'Bob': 25};
  Map<String, int> copy = Map.from(original);

  print(copy); // {Alice: 20, Bob: 25}
}
```

---

### **3.4. Using `Map.of()`**
Same as `from()`, but ensures type safety.

```dart
void main() {
  var map1 = {'a': 1, 'b': 2};
  var map2 = Map.of(map1);

  print(map2); // {a: 1, b: 2}
}
```

---

### **3.5. Using `Map.fromEntries()`**
Creates a map from a list of `MapEntry` objects.

```dart
void main() {
  var entries = [MapEntry('Alice', 22), MapEntry('Bob', 28)];
  Map<String, int> map = Map.fromEntries(entries);

  print(map); // {Alice: 22, Bob: 28}
}
```

---

### **3.6. Using `Map.fromIterable()`**
Creates a map from an iterable, allowing custom key-value mapping.

```dart
void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];
  Map<String, int> nameLengths = Map.fromIterable(
    names,
    key: (name) => name,
    value: (name) => name.length,
  );

  print(nameLengths); // {Alice: 5, Bob: 3, Charlie: 7}
}
```

---

### **3.7. Using `Map.unmodifiable()`**
Creates a **read-only** map.

```dart
void main() {
  Map<String, int> fixedMap = Map.unmodifiable({'Alice': 25, 'Bob': 30});

  print(fixedMap); // {Alice: 25, Bob: 30}

  // fixedMap['Charlie'] = 35; // ❌ ERROR: Unsupported operation
}
```

---

## **4. Advanced Map Operations**
### **4.1. Checking Key/Value Existence**
```dart
void main() {
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};

  print(scores.containsKey('Alice')); // true
  print(scores.containsValue(85)); // true
}
```

---

### **4.2. Iterating Over a Map**
```dart
void main() {
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};

  ages.forEach((key, value) {
    print('$key is $value years old');
  });
}
```

---

### **4.3. Removing Elements**
```dart
void main() {
  Map<String, int> users = {'Alice': 1, 'Bob': 2, 'Charlie': 3};

  users.remove('Bob');
  print(users); // {Alice: 1, Charlie: 3}
}
```

---

### **4.4. Merging Two Maps**
```dart
void main() {
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'b': 3, 'c': 4};

  map1.addAll(map2);
  print(map1); // {a: 1, b: 3, c: 4}
}
```

---

### **4.5. Mapping Values (`mapValues()`)**
```dart
void main() {
  Map<String, int> numbers = {'one': 1, 'two': 2, 'three': 3};

  var squared = numbers.map((key, value) => MapEntry(key, value * value));

  print(squared); // {one: 1, two: 4, three: 9}
}
```

---

## **5. Conclusion**
- `Map<K, V>()` → Creates an empty map.
- `Map.identity()` → Uses identity comparison for keys.
- `Map.from(map)` / `Map.of(map)` → Creates a new map from another.
- `Map.fromEntries(entries)` → Builds a map from `MapEntry` objects.
- `Map.fromIterable(iterable, key, value)` → Converts an iterable into a map.
- `Map.unmodifiable(map)` → Creates a **read-only** map.

---

Which datatype should we cover next?