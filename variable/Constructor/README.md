# Dart Constructors

## 1. Default (Generative) Constructors

### Example:
```dart
class Person {
  String name;
  int age;

  // Default constructor using parameter shorthand
  Person(this.name, this.age);
}

void main() {
  Person person = Person("Alice", 30);
  print("${person.name} is ${person.age} years old.");
}
```

### Expected Output:
```pgsql
Alice is 30 years old.
```

### Explanation:
- **Constructor Declaration:** The constructor `Person(this.name, this.age);` automatically assigns the passed arguments to the class properties.
- **Object Creation:** When `Person("Alice", 30)` is called in `main()`, the values "Alice" and `30` are passed to the constructor and assigned to `name` and `age`.
- **Output:** The print statement accesses these properties and prints the message.

---

## 2. Named Constructors

### Example:
```dart
class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named constructor: initializes only the name and sets age to a default value of 0
  Person.withName(String name) : this(name, 0);
}

void main() {
  Person person1 = Person("Bob", 25);
  Person person2 = Person.withName("Charlie");
  print("${person1.name} is ${person1.age} years old.");
  print("${person2.name} is ${person2.age} years old.");
}
```

### Expected Output:
```pgsql
Bob is 25 years old.
Charlie is 0 years old.
```

### Explanation:
- **Multiple Constructors:** The class `Person` includes both a default constructor and a named constructor `withName`.
- **Named Constructor Usage:** `Person.withName("Charlie")` calls the named constructor, which internally calls the default constructor using `: this(name, 0)` to set the `age` to `0`.
- **Output:** The printed output reflects the two different initialization paths.

---

## 3. Constant Constructors

### Example:
```dart
class Point {
  final int x;
  final int y;

  // Constant constructor: all fields are immutable (final)
  const Point(this.x, this.y);
}

void main() {
  const point1 = Point(10, 20);
  const point2 = Point(10, 20);
  print(identical(point1, point2)); // true
}
```

### Expected Output:
```arduino
true
```

### Explanation:
- **Immutable Fields:** The class `Point` has `final` fields, meaning they cannot be changed after initialization.
- **Constant Instances:** The `const` keyword allows the creation of compile-time constant instances. If two constant instances have the same values, they refer to the same memory location.
- **Output:** The `identical` function confirms that `point1` and `point2` are the same instance.

---

## 4. Factory Constructors

### Example:
```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Factory constructor: ensures the age is non-negative
  factory Person.create(String name, int age) {
    if (age < 0) {
      age = 0;
    }
    return Person(name, age);
  }
}

void main() {
  Person person = Person.create("Diana", -5);
  print("${person.name} is ${person.age} years old.");
}
```

### Expected Output:
```makefile
Diana is 0 years old.
```

### Explanation:
- **Factory Constructor Usage:** The factory constructor `Person.create` checks if the provided `age` is negative.
- **Custom Logic:** If `age` is negative, it resets the value to `0` before creating and returning a new `Person` instance.
- **Output:** The printed output shows that even though `-5` was passed, the age becomes `0`.

---

## 5. Redirecting Constructors

### Example:
```dart
class Rectangle {
  double width, height;

  // Main constructor
  Rectangle(this.width, this.height);

  // Redirecting constructor: calls the main constructor to create a square
  Rectangle.square(double size) : this(size, size);
}

void main() {
  Rectangle rect = Rectangle(5, 10);
  Rectangle square = Rectangle.square(5);
  print("Rectangle: ${rect.width} x ${rect.height}");
  print("Square: ${square.width} x ${square.height}");
}
```

### Expected Output:
```makefile
Rectangle: 5.0 x 10.0
Square: 5.0 x 5.0
```


### Explanation:
- **Main vs. Redirecting Constructor:** The `Rectangle` class has a primary constructor that accepts `width` and `height`. The named constructor `Rectangle.square` redirects to the primary constructor by passing the same value for both `width` and `height`.
- **Usage:** `Rectangle.square(5)` creates a square where both dimensions are `5`.
- **Output:** The output clearly distinguishes between a rectangle (with different `width` and `height`) and a square (with equal dimensions).

