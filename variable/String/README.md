<h1 style="color:lightgreen;">1.Ways to Write Strings in Dart</h1>

Dart offers several ways to create strings:

### <b>• <u>Single-Quoted Strings:</u></b>
Use single quotes for simple strings.

```dart
void main() {
String s1 = 'Hello';
print(s1); // Output: Hello
}
```

### <b>• <u>Double-Quoted Strings:</u></b>
Use double quotes, which work the same as single quotes.

```dart
void main() {
String s2 = "World";
print(s2); // Output: World
}
```

### <b>• <u>Automatic String Literal Concatenation:</u></b>
Dart automatically concatenates adjacent string literals. For example, the following code:

```dart
void main() {
String s3 = 'm' 'a' 'n';
print(s3); // Output: man
}
```
Here, Dart concatenates 'm', 'a', and 'n' into the single string "man".

### <b>• <u>Multi-line Strings with Triple Quotes:</u></b>
Triple quotes allow you to write strings that span multiple lines.

```dart
void main() {
  String multiLine = '''This is a multi-line
string that spans across
multiple lines.''';

  print(multiLine);
}
```

### <b>• <u>Raw Strings:</u></b>
### witout raw string 
```dart 
void main() {
  String rawStr = "Hello \n World";
  print(rawStr);
  /*
  Hello
   World
  */
}
```
### with raw string<br>
Prefix with an `r` to create a raw string where escape sequences are not processed.

Raw strings are used to create strings that contain backslashes without escaping them.

```dart
void main() {
String rawStr = r"Hello \n World";
print(rawStr); // Output: Hello \n World
}
```
---

# <h1 style="color:orange;">2.String Properties</h1>

The Dart String class comes with several useful properties:

### <b>• <u> codeUnits: </u></b> 
Returns a list of the string's code units.<br>
Returns a list of UTF-16 code units for each character.

```dart
void main() {
print(s.codeUnits); // Output: [68, 97, 114, 116]
}
```

### <b>• <u> hashCode: </u></b>
Provides an integer hash code of the string (useful for collections).

```dart
void main() {
print(s.hashCode); // Output: (An integer value)
}
```


### <b>• <u> isEmpty and isNotEmpty in Dart </b></u>

The isEmpty and isNotEmpty properties in Dart are used to check whether a string is empty or not.

---

#### **1. isEmpty**
The isEmpty property returns `true` if the string contains no characters (i.e., its length is zero).

#### **Example:**
```dart
void main() {
  String emptyStr = "";
  print(emptyStrisEmpty; // Output: true
}
```

#### **Explanation:**
- If the string is `""` (empty), isEmpty will return `true`.
- If the string contains any characters, isEmpty will return `false`.

---

#### **2. isNotEmpty**
The isNotEmpty property returns `true` if the string contains at least one character.

#### **Example:**
```dart
void main() {
  String nonEmptyStr = "Hello";
  print(nonEmptyStrisNotEmpty; // Output: true
}
```

#### **Explanation:**
- If the string contains at least one character, isNotEmpty will return `true`.
- If the string is empty (`""`), isNotEmpty will return `false`.

---

### **Common Mistake:**
In the provided example, `isNotEmpty is used, but` `s` is not defined. Make sure to use the correct variable name.

**Corrected Code:**
```dart
void main() {
  String emptyStr = "";
  print(emptyStr.isEmpty);     // Output: true
  print(emptyStr.isNotEmpty);  // Output: false
}
```

### <b>• <u> length: </u></b>
Returns the number of code units (usually, the number of characters).

```dart
void main() {
String s = "Dart";
print(s.length); // Output: 4
}
```


### <b>• <u> runes: </u></b>
Returns an iterable of Unicode code points, which is useful for handling characters that might be more than one code unit.

```dart
void main() {
print(s.runes); // Output: (68, 97, 114, 116)
}
```

### <b>• <u> runtimeType: </u> </b>
Returns the runtime type of the object (for strings, it is String).

```dart
void main() {
print(s.runtimeType); // Output: String
}
```


### <b>• <u>  allMatches() </u> </b>
Finds all occurrences of a pattern in a string and returns an iterable of matches.

Example:
```dart
void main() {
  String str = "hello hello world";
  Iterable<Match> matches = RegExp("hello").allMatches(str);
  for (var match in matches) {
    print(match.start); // Outputs: 0, 6 (indexes of "hello")
  }
}
```
Explanation:
- `RegExp("hello").allMatches(str)` finds all occurrences of "hello".
- The `start` property of each `Match` gives the index where the match starts.

### <b>• <u> codeUnitAt() </u> </b>
Returns the Unicode code unit at a given index.

Example:
```dart
void main() {
  String str = "Hello";
  print(str.codeUnitAt(1)); // Output: 101 (Unicode of 'e')
}
```
Explanation:
- Each character in a string has a corresponding Unicode value.
- `codeUnitAt(1)` retrieves the Unicode of the character at index 1.

### <b>• <u> compareTo() </u> </b>
Compares two strings lexicographically.

Example:
```dart
void main() {
  print("apple".compareTo("banana")); // Output: -1
  print("banana".compareTo("apple")); // Output: 1
  print("apple".compareTo("apple")); // Output: 0
}
```
Explanation:
- Returns `-1` if the first string is smaller, `1` if larger, and `0` if equal.

### <b>• <u> contains() </u> </b>
Checks if a string contains a given substring.

Example:
```dart
void main() {
  print("Hello, Dart!".contains("Dart")); // Output: true
  print("Hello, Dart!".contains("Flutter")); // Output: false
}
```
Explanation:
- `contains("Dart")` returns `true` since "Dart" is present.

### <b>• <u> endsWith() </u> </b>
Checks if a string ends with a specific substring.

Example:
```dart
void main() {
  print("Hello, Dart!".endsWith("Dart!")); // Output: true
  print("Hello, Dart!".endsWith("Hello")); // Output: false
}
```
Explanation:
- `endsWith("Dart!")` checks if the string ends with "Dart!".

### <b>• <u> indexOf() </u> </b>
Finds the first occurrence of a substring.

Example:
```dart
void main() {
  print("Hello, Dart!".indexOf("Dart")); // Output: 7
  print("Hello, Dart!".indexOf("Flutter")); // Output: -1
}
```
Explanation:
- Returns the first index where the substring starts or `-1` if not found.

### <b>• <u> lastIndexOf() </u> </b>
Finds the last occurrence of a substring.

Example:
```dart
void main() {
  print("hello world hello".lastIndexOf("hello")); // Output: 12
}
```
Explanation:
- Returns the last index where the substring appears.

### <b>• <u> matchAsPrefix() </u> </b>
Checks if a pattern matches the beginning of a string.

Example:
```dart
void main() {
  RegExp regExp = RegExp("hello");
  print(regExp.matchAsPrefix("hello world") != null); // Output: true
  print(regExp.matchAsPrefix("world hello") != null); // Output: false
}
```
Explanation:
- Returns `true` if the pattern is found at the beginning of the string.


## <b>• <u> `padLeft()` and `padRight()` Methods in Dart </u> </b>

Dart provides the padLeft() and padRight() methods to adjust string length by adding padding characters.

### <b>• <u> 1. padLeft() </u> </b>
Adds padding to the left until the string reaches the desired length.

Example:
```dart
void main() {
  String str = "42";
  print(str.padLeft(5, "0")); // Output: "00042"
}
```

Explanation:
- padLeft(totalLength, paddingChar) adds paddingChar to the left until totalLength is met.
- If paddingChar is not provided, spaces are used by default.

### <b>• <u> 2. padRight() </u> </b>
Adds padding to the right until the string reaches the desired length.

Example:
```dart
void main() {
  String str = "42";
  print(str.padRight(5, "0")); // Output: "42000"
}
```

Explanation:
- padRight(totalLength, paddingChar) adds paddingChar to the right until totalLength is met.
- If paddingChar is not provided, spaces are used by default.


# `replaceAll()`, `replaceAllMapped()`, `replaceFirst()`, `replaceFirstMapped()`, and `replaceRange()` Methods in Dart

Dart provides various methods to manipulate strings by replacing parts of them.

### <b>• <u> replaceAll() </u> </b>
Replaces all occurrences of a substring or pattern with another string.

Example:
```dart
void main() {
  String str = "hello world, hello dart";
  print(str.replaceAll("hello", "Hi")); // Output: "Hi world, Hi dart"
}
```

### <b>• <u> replaceAllMapped() </u> </b>
Replaces all matches of a pattern using a function that processes each match.

Example:
```dart
void main() {
  String str = "a1b2c3";
  print(str.replaceAllMapped(RegExp(r'\d'), (match) => "#")); // Output: "a#b#c#"
}
```

### <b>• <u> replaceFirst() </u> </b>
Replaces only the first occurrence of a substring or pattern.

Example:
```dart
void main() {
  String str = "hello world, hello dart";
  print(str.replaceFirst("hello", "Hi")); // Output: "Hi world, hello dart"
}
```

### <b>• <u> replaceFirstMapped() </u> </b>
Replaces the first occurrence of a pattern using a function that processes the match.

Example:
```dart
void main() {
  String str = "a1b2c3";
  print(str.replaceFirstMapped(RegExp(r'\d'), (match) => "#")); // Output: "a#b2c3"
}
```

### <b>• <u> replaceRange() </u> </b>
Replaces a specific range of characters with another string.

Example:
```dart
void main() {
  String str = "Hello Dart!";
  print(str.replaceRange(6, 10, "Flutter")); // Output: "Hello Flutter!"
}
```

These methods are useful for modifying strings dynamically based on patterns or specific positions.


# `Split()` and `SplitMapJoin()` Methods in Dart

Dart provides the `split()` and `splitMapJoin()` methods to manipulate strings by splitting them into parts.

### <b>• <u> `split()` </u> </b>
Breaks a string into a list of substrings based on a delimiter.

Example:
```dart
void main() {
  String str = "apple,banana,grape";
  List<String> fruits = str.split(",");
  print(fruits); // Output: ["apple", "banana", "grape"]
}
```

Explanation:
- `split(delimiter)` divides the string at each occurrence of `delimiter` and returns a list of substrings.

### <b>• <u> `splitMapJoin()` </u> </b>
Splits a string using a pattern and processes each part with custom functions.

Example:
```dart
void main() {
  String str = "Hello123World456";
  String result = str.splitMapJoin(
    RegExp(r'\d+'),
    onMatch: (match) => "-", 
    onNonMatch: (text) => text.toUpperCase()
  );
  print(result); // Output: "HELLO-WORLD-"
}
```

Explanation:
- `splitMapJoin(pattern, onMatch, onNonMatch)` splits the string using `pattern`.
- `onMatch` processes matched parts (digits replaced with `-`).
- `onNonMatch` processes non-matching parts (converted to uppercase).


--- 
---
### <b>• <u> `StartsWith` Method in Dart </u> </b>

Dart provides the `startsWith()` method to check if a string begins with a specific substring.

Example:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.startsWith("Hello")); // Output: true
}
```

Explanation:
- `startsWith(prefix)` returns `true` if the string starts with the given `prefix`, otherwise `false`.
- It is case-sensitive.

Example with position:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.startsWith("Dart", 7)); // Output: true
}
```

Explanation:
- `startsWith(prefix, index)` checks if the substring at the given `index` matches the `prefix`.
- In this example, it checks if "Dart!" starts at index 7.
---
---

### <b>• <u> `Substring` Method in Dart </u> </b>

Dart provides the substring() method to extract a portion of a string based on the given index range.

Example:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.substring(0, 5)); // Output: "Hello"
}
```

Explanation:
- `substring(start, end)` extracts characters from `start` index up to, but not including, `end` index.
- If `end` is omitted, it extracts from `start` to the end of the string.

Example:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.substring(7)); // Output: "Dart!"
}
```

Explanation:
- substring(7) extracts everything from index `7` to the end of the string.


# String Case and Conversion Methods in Dart

Dart provides three methods to manipulate string cases and convert objects to strings: `toLowerCase()`, `toUpperCase()`, and `toString()`.

###  <b>• <u> 1. toLowerCase() </u></b>
Converts all characters in the string to lowercase.

Example:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.toLowerCase()); // Output: "hello, dart!"
}
```

Explanation:
- toLowerCase() changes all uppercase letters to lowercase while keeping other characters unchanged.

###  <b>• <u> 2. toUpperCase() </u></b>
Converts all characters in the string to uppercase.

Example:
```dart
void main() {
  String str = "Hello, Dart!";
  print(str.toUpperCase()); // Output: "HELLO, DART!"
}
```

Explanation:
- toUpperCase() changes all lowercase letters to uppercase while keeping other characters unchanged.

### <b>• <u>3. toString() </u></b>
Converts an object to a string representation.

Example:
```dart
void main() {
  int number = 42;
  print(number.toString()); // Output: "42"
}
```

Explanation:
- toString() converts non-string data types (like integers, doubles, or objects) into string format.


---
---
# String Trimming Methods in Dart</b></u>

Dart provides three methods to remove whitespace from strings: `trim()`, `trimLeft()`, and `trimRight()`.

### <b>• <u> 1. `trim()` </u></b>
Removes leading and trailing whitespace from a string.

Example:
```dart
void main() {
  String str = "  Hello, Dart!  ";
  print(str.trim()); // Output: "Hello, Dart!"
}
```

Explanation:
- `trim()` removes spaces at both the beginning and end of the string.

### <b>• <u> 2. `trimLeft()` </u></b>
Removes only leading (left-side) whitespace from a string.

Example:
```dart
void main() {
  String str = "  Hello, Dart!  ";
  print(str.trimLeft()); // Output: "Hello, Dart!  "
}
```

Explanation:
- `trimLeft()` removes spaces at the start but keeps trailing spaces.

### <b>• <u> 3. `trimRight()` </u></b>
Removes only trailing (right-side) whitespace from a string.

Example:
```dart
void main() {
  String str = "  Hello, Dart!  ";
  print(str.trimRight()); // Output: "  Hello, Dart!"
}
```

Explanation:
- `trimRight()` removes spaces at the end but keeps leading spaces.

To remove whitespace from all over the string (including spaces between words), use `replaceAll()`:

Example:
```dart
void main() {
  String str = "  Hello,   Dart!  ";
  print(str.replaceAll(" ", "")); // Output: "Hello,Dart!"
}
```

Explanation:
- `replaceAll(" ", "")` removes all spaces from the string, including those between words.

Use Cases:
- `trim()` is useful when validating user input by removing unnecessary spaces.
- `trimLeft()` can be used when aligning text to the left.
- `trimRight()` helps when ensuring there are no trailing spaces, such as before saving text to a database.
---
---

### <b>• <u> noSuchMethod() </u></b>

The noSuchMethod() function in Dart is a special method that gets called when an attempt is made to use a method that does not exist. It allows developers to handle missing method calls dynamically.

---

### **How noSuchMethod() Works**
- It is a method available in every Dart object via the `Object` class.
- To use it, the class must have an `@override` annotation and extend another class or implement an interface.
- The method receives an `Invocation` object containing information about the method that was called.

---

### **Example:**
```dart
class MyClass {
  @override
  void noSuchMethod(Invocation invocation) {
    print("Method \${invocation.memberName} not found");
  }
}

void main() {
  var obj = MyClass();
  obj.undefinedMethod(); // Output: Method Symbol("undefinedMethod") not found
}
```

---

### **Explanation:**
- The noSuchMethod() is overridden in `MyClass`.
- When `undefinedMethod()` is called, Dart does not find it and instead invokes noSuchMethod().
- The method prints out the name of the missing method, helping in debugging or implementing dynamic behaviors.

---

### **Use Cases:**
1. **Debugging Missing Methods:** Useful in logging missing method calls.
2. **Dynamic Invocation Handling:** Allows creating dynamic proxies and handling method calls at runtime.
3. **Mocking and Testing:** Helps in testing by capturing method calls dynamically.

---

### **Important Notes:**
- If a class does not override noSuchMethod(), calling a non-existent method will result in a runtime error.
- Overriding noSuchMethod() allows greater flexibility but should be used carefully to avoid unexpected behaviors.
---
----
----
-------



### <b>• <u> toUpperCase() / toLowerCase(): </u></b>
Convert the string to upper or lower case.

```dart
void main() {
String s = "Dart Programming";
print(s.toUpperCase()); // Output: DART PROGRAMMING
print(s.toLowerCase()); // Output: dart programming
}
```


### <b>• <u> split(): </u></b> 
Splits the string into a list of substrings based on a specified separator.<br>
Splits the string using a delimiter and returns a list.

```dart
void main() {
String csv = "apple,banana,cherry";
print(csv.split(",")); // Output: [apple, banana, cherry]
}
```

### <b>• <u> substring(): </u></b>
Extracts a portion of the string between specified indices.

```dart
void main() {
String s = "Dart Programming";
print(s.substring(0, 4)); // Output: Dart
}
```

### <b>• <u> contains(): </u></b>
Checks if the string contains a specified substring.

```dart
void main() {
print(s.contains("Pro")); // Output: true
}
```

### <b>• <u>indexOf(): </u></b>
Finds the index of the first occurrence of a substring.

```dart
void main() {
print(s.indexOf("Programming")); // Output: 5
}
```

### <b>• <u> replaceAll() / replaceFirst(): </u></b>
Replace parts of the string with another substring.

```dart
void main() {

  String s = "Dart Programming";
  String modified = s.replaceAll("Dart", "Flutter");
  print(modified); // Output: Flutter Programming
}

```
Explanation:<br>
The string s is initialized with "Dart Programming".
replaceAll("Dart", "Flutter") replaces "Dart" with "Flutter".
The modified string is printed.