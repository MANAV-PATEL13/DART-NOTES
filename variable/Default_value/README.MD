# Default Values in Dart

## Introduction
In Dart, variables that are not explicitly initialized have default values based on their type. This note covers the default values for different types in Dart and how to use them.

## Default Values
### 1. **Uninitialized Variables**
- If a variable is declared but not assigned a value, it defaults to `null` in Dart.
- This applies to all variables, even numeric and boolean types, because Dart treats uninitialized variables as `null`.

#### Example:
```dart
void main() {
  int? number;
  String? text;
  bool? isTrue;

  print(number); // Output: null
  print(text);   // Output: null
  print(isTrue); // Output: null
}
```

### 2. **Non-nullable Variables**
- If a variable is non-nullable (without `?`), it must be initialized before use.
- Otherwise, a compilation error occurs.

#### Example:
```dart
void main() {
  int number = 0; // Must be assigned a value
  print(number);  // Output: 0
}
```

### 3. **Default Values in Functions**
- Function parameters can have default values using optional named or positional parameters.

#### Named Parameters with Default Values:
```dart
void greet({String name = 'Guest'}) {
  print('Hello, $name!');
}

void main() {
  greet();         // Output: Hello, Guest!
  greet(name: 'Alice'); // Output: Hello, Alice!
}
```

#### Positional Parameters with Default Values:
```dart
void displayMessage([String message = 'Default Message']) {
  print(message);
}

void main() {
  displayMessage();        // Output: Default Message
  displayMessage('Hello'); // Output: Hello
}
```

### 4. **Using `late` Keyword**
- The `late` modifier allows non-nullable variables to be initialized later.

#### Example:
```dart
late String greeting;

void main() {
  greeting = 'Hello, Dart!';
  print(greeting); // Output: Hello, Dart!
}
```

## Summary
- Uninitialized variables default to `null`.
- Non-nullable variables must be assigned a value.
- Function parameters can have default values.
- `late` variables allow deferred initialization.

By understanding these concepts, you can avoid common null-related errors in Dart!
