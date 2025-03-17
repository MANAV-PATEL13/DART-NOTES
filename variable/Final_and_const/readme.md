# Final vs Const in Dart

## `final` Keyword

- A `final` variable can only be assigned once.
- It is initialized when accessed for the first time.
- Used when the value is known at runtime.

### Example:

```dart
void main() {
  final int a = 10;
  print(a);
  
  final DateTime now = DateTime.now(); // Allowed because it's set at runtime
  print(now);
}
```

## `const` Keyword

- A `const` variable is a compile-time constant.
- It is initialized at compile-time and cannot be changed.
- Used when the value is known at compile-time.

### Example:

```dart
void main() {
  const int b = 20;
  print(b);
  
  // const DateTime now = DateTime.now(); // Error: Must be a compile-time constant
}
```
- Why Does const DateTime now = DateTime.now(); Cause an Error?
DateTime.now() gets the current system time when the program runs.
Since this value is only known at runtime (not at compile time), it cannot be assigned to a const variable.
Instead, you should use final for runtime constants: 

## Key Differences

| Feature      | `final` | `const` |
|-------------|--------|--------|
| Mutability  | Immutable after assignment | Immutable and compile-time constant |
| When initialized | At runtime | At compile-time |
| Use case    | When the value is known at runtime | When the value is known at compile-time |
| Example | `final int x = DateTime.now().year;` (Allowed) | `const int y = DateTime.now().year;` (Error) |
| Memory Usage | Creates a new instance every time | Uses the same memory reference if values are the same |

## Using `const` with Objects

- `const` can be used with objects, making them immutable.
- Objects created with `const` share the same memory reference.

### Example:

```dart
class MyClass {
  final int x;
  const MyClass(this.x);
}

void main() {
  const obj1 = MyClass(10);
  const obj2 = MyClass(10);
  print(identical(obj1, obj2)); // true, same instance
}
