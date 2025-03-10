<h1 style="color:lightgreen;">1.Ways to Write Strings in Dart</h1>

Dart offers several ways to create strings:

## Single-Quoted Strings:
Use single quotes for simple strings.

```dart
void main() {
String s1 = 'Hello';
print(s1); // Output: Hello
}
```

## Double-Quoted Strings:
Use double quotes, which work the same as single quotes.

```dart
void main() {
String s2 = "World";
print(s2); // Output: World
)
```

## Automatic String Literal Concatenation:
Dart automatically concatenates adjacent string literals. For example, the following code:

```dart
void main() {
String s3 = 'm' 'a' 'n';
print(s3); // Output: man
}
```
Here, Dart concatenates 'm', 'a', and 'n' into the single string "man".

## Multi-line Strings with Triple Quotes:
Triple quotes allow you to write strings that span multiple lines.

```dart
void main() {
  String multiLine = '''This is a multi-line
string that spans across
multiple lines.''';

  print(multiLine);
}
```

## Raw Strings:
Prefix with an `r` to create a raw string where escape sequences are not processed.

```dart
void main() {
String rawStr = r"Hello \n World";
print(rawStr); // Output: Hello \n World
}
```
---
<h1 style="color:orange;">2.String Properties</h1>

The Dart String class comes with several useful properties:

## length:
Returns the number of code units (usually, the number of characters).

```dart
void main() {
String s = "Dart";
print(s.length); // Output: 4
}
```

## isEmpty and isNotEmpty:
Check if a string is empty or not.

```dart
void main() {
String emptyStr = "";
print(emptyStr.isEmpty);   // Output: true
print(s.isNotEmpty);       // Output: true
}
```

## codeUnits:
Returns a list of UTF-16 code units for each character.

```dart
void main() {
print(s.codeUnits); // Output: [68, 97, 114, 116]
}
```

## runes:
Returns an iterable of Unicode code points, which is useful for handling characters that might be more than one code unit.

```dart
void main() {
print(s.runes); // Output: (68, 97, 114, 116)
}
```

## hashCode:
Provides an integer hash code of the string (useful for collections).

```dart
void main() {
print(s.hashCode); // Output: (An integer value)
}
```

## runtimeType:
Returns the runtime type of the object (for strings, it is String).

```dart
void main() {
print(s.runtimeType); // Output: String
}
```
<h1 style="color:cyan;">3.Common String Methods</h1>

Dart strings include many methods for manipulation:

## toUpperCase() / toLowerCase():
Convert the string to upper or lower case.

```dart
void main() {
String s = "Dart Programming";
print(s.toUpperCase()); // Output: DART PROGRAMMING
print(s.toLowerCase()); // Output: dart programming
}
```

## trim():
Removes leading and trailing whitespace.

```dart
void main() {
String padded = "  Hello World  ";
print(padded.trim()); // Output: Hello World
}
```

## split():
Splits the string using a delimiter and returns a list.

```dart
void main() {
String csv = "apple,banana,cherry";
print(csv.split(",")); // Output: [apple, banana, cherry]
}
```

## substring():
Extracts a portion of the string between specified indices.

```dart
void main() {
String s = "Dart Programming";
print(s.substring(0, 4)); // Output: Dart
}
```

## contains():
Checks if the string contains a specified substring.

```dart
void main() {
print(s.contains("Pro")); // Output: true
}
```

## indexOf():
Finds the index of the first occurrence of a substring.

```dart
void main() {
print(s.indexOf("Programming")); // Output: 5
}
```

## replaceAll() / replaceFirst():
Replace parts of the string with another substring.

```dart
void main() {
  String s = "Dart Programming";
  String modified = s.replaceAll("Dart", "Flutter");
  print(modified); // Output: Flutter Programming
}

```
