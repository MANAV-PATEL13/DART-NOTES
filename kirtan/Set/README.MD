Here’s a complete guide to **Maps (`Map<K, V>`) in Dart**, covering **basic to advanced** concepts with examples.

---

# Dart Maps (`Map<K, V>`) - Basic to Advanced

## **📌 Introduction**
A **Map** in Dart is a collection of key-value pairs where:
- Each **key** is unique.
- Values can be **any type**.
- Dart provides **various methods** for working with Maps.

---

## **1️⃣ Creating a Map**

### **Using `Map` Constructor**
```dart
void main() {
  var person = Map<String, String>();
  person['name'] = 'John';
  person['age'] = '25';
  print(person);  // Output: {name: John, age: 25}
}
```

### **Using Literal Notation**
```dart
void main() {
  var person = {'name': 'John', 'age': 25};
  print(person);  // Output: {name: John, age: 25}
}
```

### **Specifying Data Types**
```dart
void main() {
  Map<int, String> employees = {101: 'Alice', 102: 'Bob'};
  print(employees); // Output: {101: Alice, 102: Bob}
}
```

---

## **2️⃣ Accessing Map Elements**

### **Using Keys**
```dart
void main() {
  var person = {'name': 'John', 'age': 25};
  print(person['name']);  // Output: John
}
```

### **Using `.keys` and `.values`**
```dart
void main() {
  var fruits = {'apple': 10, 'banana': 20, 'cherry': 30};
  print(fruits.keys);   // Output: (apple, banana, cherry)
  print(fruits.values); // Output: (10, 20, 30)
}
```

---

## **3️⃣ Adding and Updating Entries**

### **Adding Elements**
```dart
void main() {
  var person = {'name': 'John'};
  person['age'] = 25; // Adding new key-value pair
  print(person);  // Output: {name: John, age: 25}
}
```

### **Updating Elements**
```dart
void main() {
  var person = {'name': 'John', 'age': 25};
  person['age'] = 26; // Updating existing key
  print(person);  // Output: {name: John, age: 26}
}
```

### **Using `update()`**
```dart
void main() {
  var fruits = {'apple': 10, 'banana': 20};
  fruits.update('apple', (value) => value + 5);  
  print(fruits);  // Output: {apple: 15, banana: 20}
}
```

---

## **4️⃣ Removing Elements**

### **Using `remove()`**
```dart
void main() {
  var person = {'name': 'John', 'age': 25};
  person.remove('age');
  print(person);  // Output: {name: John}
}
```

### **Using `removeWhere()`**
```dart
void main() {
  var numbers = {1: 'one', 2: 'two', 3: 'three'};
  numbers.removeWhere((key, value) => key.isEven);
  print(numbers);  // Output: {1: one, 3: three}
}
```

---

## **5️⃣ Checking Elements in a Map**

### **Using `containsKey()`**
```dart
void main() {
  var person = {'name': 'John', 'age': 25};
  print(person.containsKey('name'));  // Output: true
}
```

### **Using `containsValue()`**
```dart
void main() {
  var scores = {'Alice': 90, 'Bob': 85};
  print(scores.containsValue(85));  // Output: true
}
```

---

## **6️⃣ Iterating Over a Map**

### **Using `forEach()`**
```dart
void main() {
  var fruits = {'apple': 10, 'banana': 20, 'cherry': 30};
  fruits.forEach((key, value) {
    print('$key: $value');
  });
}
```

### **Using `for-in` Loop**
```dart
void main() {
  var countries = {'USA': 'Washington', 'India': 'Delhi'};
  for (var key in countries.keys) {
    print('$key -> ${countries[key]}');
  }
}
```

---

## **7️⃣ Advanced Map Methods**

### **Merging Maps**
```dart
void main() {
  var map1 = {'a': 1, 'b': 2};
  var map2 = {'c': 3, 'd': 4};
  var merged = {...map1, ...map2};
  print(merged);  // Output: {a: 1, b: 2, c: 3, d: 4}
}
```

### **Using `map()` to Transform Values**
```dart
void main() {
  var prices = {'apple': 100, 'banana': 50};
  var discountedPrices = prices.map((key, value) => MapEntry(key, value * 0.9));
  print(discountedPrices);  // Output: {apple: 90.0, banana: 45.0}
}
```

### **Converting Map to List**
```dart
void main() {
  var scores = {'Alice': 90, 'Bob': 85};
  var entries = scores.entries.map((e) => '${e.key}: ${e.value}').toList();
  print(entries);  // Output: [Alice: 90, Bob: 85]
}
```

---

## **8️⃣ Immutable Maps (`Map.unmodifiable()`)**
```dart
void main() {
  var constantMap = Map.unmodifiable({'a': 1, 'b': 2});
  // constantMap['c'] = 3;  // Error: Cannot modify unmodifiable map
  print(constantMap);  // Output: {a: 1, b: 2}
}
```

---

I've already included a **comprehensive list of Dart Map methods** along with explanations and examples. However, if you're looking for **more advanced use cases, optimizations, or real-world applications**, here are a few **extra** topics that could be helpful:  

---

## **9️⃣ Converting Between Map and Other Data Types**  

### **Convert Map to JSON (String)**
```dart
import 'dart:convert';

void main() {
  var person = {'name': 'Alice', 'age': 30};
  var jsonString = jsonEncode(person);
  print(jsonString);  // Output: {"name":"Alice","age":30}
}
```

### **Convert JSON (String) to Map**
```dart
import 'dart:convert';

void main() {
  String jsonString = '{"name": "Alice", "age": 30}';
  Map<String, dynamic> person = jsonDecode(jsonString);
  print(person);  // Output: {name: Alice, age: 30}
}
```

---

## **🔟 Filtering a Map Based on Condition**
```dart
void main() {
  var products = {'Laptop': 1200, 'Phone': 800, 'Tablet': 600};

  var expensiveProducts = Map.fromEntries(
    products.entries.where((entry) => entry.value > 700),
  );

  print(expensiveProducts);  // Output: {Laptop: 1200, Phone: 800}
}
```

---

## **1️⃣1️⃣ Using `entries` to Loop Through Key-Value Pairs**
```dart
void main() {
  var countryCapital = {'India': 'Delhi', 'USA': 'Washington', 'Japan': 'Tokyo'};

  for (var entry in countryCapital.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}
```

---

## **1️⃣2️⃣ Nested Maps (Map Inside a Map)**
```dart
void main() {
  var company = {
    'name': 'Tech Corp',
    'departments': {
      'HR': {'employees': 10},
      'IT': {'employees': 30}
    }
  };

  print(company['departments']?['IT']?['employees']); // Output: 30
}
```

---

## **1️⃣3️⃣ Sorting a Map by Keys or Values**

### **Sorting by Keys**
```dart
void main() {
  var scores = {'Alice': 90, 'Charlie': 85, 'Bob': 95};

  var sortedByKey = Map.fromEntries(
    scores.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
  );

  print(sortedByKey);  // Output: {Alice: 90, Bob: 95, Charlie: 85}
}
```

### **Sorting by Values**
```dart
void main() {
  var scores = {'Alice': 90, 'Charlie': 85, 'Bob': 95};

  var sortedByValue = Map.fromEntries(
    scores.entries.toList()..sort((a, b) => a.value.compareTo(b.value)),
  );

  print(sortedByValue);  // Output: {Charlie: 85, Alice: 90, Bob: 95}
}
```

---

## **1️⃣4️⃣ Using Map with Stream and Future**
### **Fetching Data Asynchronously**
```dart
import 'dart:async';

Future<Map<String, int>> fetchScores() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate network delay
  return {'Alice': 85, 'Bob': 90, 'Charlie': 95};
}

void main() async {
  print('Fetching scores...');
  var scores = await fetchScores();
  print(scores);  // Output after 2 sec: {Alice: 85, Bob: 90, Charlie: 95}
}
```

---

## **🔥 Final Thoughts**
- This section **expands** on the previous guide by covering **more advanced Dart Map techniques**.  
- Understanding **JSON, asynchronous operations, and sorting** will help in **real-world applications**.  
- **Try implementing Maps in a small project**, like a **student database**, **shopping cart**, or **task manager**!  

Would you like me to add **even more advanced techniques** or **a real-world use case** for practice? 🚀

## **🔥 Summary**

| Concept                 | Description                                             |
|-------------------------|---------------------------------------------------------|
| **Creating a Map**      | Using literals or constructor                           |
| **Accessing Elements**  | Using keys, `.keys`, `.values`                          |
| **Adding/Updating**     | Using `update()`, `[]=`, spread operator                |
| **Removing Elements**   | Using `remove()`, `removeWhere()`                       |
| **Checking Existence**  | Using `containsKey()`, `containsValue()`                |
| **Iteration**           | Using `forEach()`, `for-in`                             |
| **Transforming**        | Using `map()`, `.entries.map()`                         |
| **Immutable Maps**      | Using `Map.unmodifiable()`                              |

This **step-by-step guide** provides everything needed to **master Dart Maps!** 🚀

---

