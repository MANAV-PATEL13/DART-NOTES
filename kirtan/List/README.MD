# <span style="color:green;">Dart Lists (`List<T>`) - Basic to Advanced</span>

## <span style="color:green;">Introduction</span>

A **List** in Dart is an **ordered collection** of elements that allows **duplicates**. Lists can be **fixed-length** or **growable**, and Dart provides many useful methods for list manipulation.

---

## <span style="color:green;">1️⃣ Basic List Operations</span>

### <span style="color:green;">Creating a List</span>

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  print(fruits);  // Output: [Apple, Banana, Cherry]
}
```

### <span style="color:green;">Accessing List Elements</span>

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];
  print(fruits[0]);  // Output: Apple
  print(fruits.length);  // Output: 3
}
```

### <span style="color:green;">Modifying List Elements</span>

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];
  fruits[1] = "Orange"; // Replace Banana with Orange
  print(fruits);  // Output: [Apple, Orange, Cherry]
}
```

---

## <span style="color:green;">2️⃣ List Methods & Properties</span>

### <span style="color:green;">Adding Elements</span>

```dart
void main() {
  var numbers = [1, 2, 3];
  numbers.add(4);
  numbers.addAll([5, 6]);
  print(numbers); // Output: [1, 2, 3, 4, 5, 6]
}
```

### <span style="color:green;">Removing Elements</span>

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5];
  numbers.remove(3);  // Removes first occurrence of 3
  numbers.removeAt(0);  // Removes element at index 0
  numbers.removeLast();  // Removes last element
  print(numbers);
}
```

### <span style="color:green;">Sorting a List</span>

```dart
void main() {
  var numbers = [5, 1, 4, 3, 2];
  numbers.sort();  // Sorts in ascending order
  print(numbers); // Output: [1, 2, 3, 4, 5]
}
```

### <span style="color:green;">Reversing a List</span>

```dart
void main() {
  var numbers = [1, 2, 3];
  print(numbers.reversed.toList());  // Output: [3, 2, 1]
}
```

### <span style="color:green;">Checking if an Element Exists</span>

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];
  print(fruits.contains("Banana"));  // Output: true
}
```

---

## <span style="color:green;">3️⃣ Iterating Through a List</span>

### <span style="color:green;">Using `for` Loop</span>

```dart
void main() {
  var numbers = [10, 20, 30];
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
}
```

### <span style="color:green;">Using `forEach()`</span>

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];
  fruits.forEach((fruit) => print(fruit));
}
```

### <span style="color:green;">Using `map()` (Transforming List Elements)</span>

```dart
void main() {
  var numbers = [1, 2, 3, 4];
  var squares = numbers.map((num) => num * num).toList();
  print(squares); // Output: [1, 4, 9, 16]
}
```

### <span style="color:green;">Using `where()` (Filtering List)</span>

```dart
void main() {
  var numbers = [1, 2, 3, 4, 5, 6];
  var evenNumbers = numbers.where((num) => num.isEven).toList();
  print(evenNumbers); // Output: [2, 4, 6]
}
```

---

## <span style="color:green;">4️⃣ Advanced List Concepts</span>

### <span style="color:green;">Spread Operator (`...`)</span>

```dart
void main() {
  var list1 = [1, 2, 3];
  var list2 = [...list1, 4, 5]; // Combines lists
  print(list2); // Output: [1, 2, 3, 4, 5]
}
```

### <span style="color:green;">Null-Aware Spread Operator (`...?`)</span>

```dart
void main() {
  List<int>? nullableList;
  var numbers = [0, ...?nullableList, 10];  
  print(numbers); // Output: [0, 10]
}
```

### <span style="color:green;">Using `fold()` (Accumulating Values)</span>

```dart
void main() {
  var numbers = [1, 2, 3, 4];
  var sum = numbers.fold(0, (prev, element) => prev + element);
  print(sum); // Output: 10
}
```

### <span style="color:green;">Using `reduce()` (Finding Max Value)</span>

```dart
void main() {
  var numbers = [5, 3, 8, 2];
  var maxNumber = numbers.reduce((a, b) => a > b ? a : b);
  print(maxNumber); // Output: 8
}
```

### <span style="color:green;">Converting List to Map</span>

```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];
  var fruitMap = {for (var fruit in fruits) fruit: fruit.length};
  print(fruitMap); // Output: {Apple: 5, Banana: 6, Cherry: 6}
}
```

---

## <span style="color:green;">5️⃣ Immutable Lists (`List.unmodifiable()`)</span>

```dart
void main() {
  var immutableList = List.unmodifiable([1, 2, 3]);
  // immutableList.add(4); // This will cause an error
  print(immutableList); // Output: [1, 2, 3]
}
```

---

## <span style="color:green;">🔥 Conclusion</span>

This **step-by-step guide** covers everything you need to **master Dart Lists** 🚀.

👉 **Next Steps: Learn `Set` or `Map`?**

