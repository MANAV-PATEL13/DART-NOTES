// void main() {
//   String text1 = "Hello";
//   String text2 = "Hello";
//   String text3 = "World";

//   print(text1.hashCode); // Same hash code for both "Hello"
//   print(text2.hashCode);
//   print(text3.hashCode); // Different hash code for "World"
//   print(text1.hashCode == text3.hashCode);
// }

// void main() {
//   Person p1 = Person("Alice");
//   Person p2 = Person("Alice");

//   print(p1.hashCode); // Different hash codes
//   print(p2.hashCode);
// }
// class Person {
//   String name;

//   Person(this.name);
// }

void main() {
  var p1 = Person('kirtan', 'kankotiya');
  var p2 = Person('kirtan', 'kankotiya');
  var n1 = "meet";
  var n2 = "meet";
  print(n1.hashCode);
  print(n2.hashCode);
  print(n1.hashCode == n2.hashCode);

  print(p1.hashCode == p2.hashCode); // Output: false
  print(p1.hashCode);
  print(p2.hashCode);
}

class Person {
  String firstName, lastName;
  Person(this.firstName, this.lastName);
}
