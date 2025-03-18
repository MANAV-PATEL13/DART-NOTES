// void main() {
//   String s = "Dart";
//   print(s.runes); // Output: (68, 97, 114, 116)
//   print(s.codeUnits); // Output: (68, 97, 114, 116)
//   print(s.runtimeType);

//   String str = "hello hello world";
//   Iterable<Match> matches = RegExp("hello").allMatches(str);
//   for (var match in matches) {
//     print(match.start); // Outputs: 0, 6 (indexes of "hello")
//   }
// }

// void main() {
//   // int a = 10;
//   // double b = 20.5;
//   // String c = "hello";
//   // bool d = true;

//   // print(a);
//   // print(b);
//   // print(c);

//   List<String> a1 = ["apple", "banana", "cherry"];
//   print(a1);
//   print(a1[0]);
//   print(a1[1]);
//   print(a1[2]);
//   // print(a1[3]); // Error: Index out of range: Index 3 is
//   // out of range (valid indices are 0, 1, 2)
//   print(a1.length);
//   print(a1.isEmpty); // Output: false
//   print(a1.isNotEmpty); // Output: true
//   // print(a1.first); // Error: No such method: 'first'
//   // print(a1.last); // Error: No such method: 'last'
//   print(a1.firstWhere((element) => element == "banana"));
//   print(a1.lastWhere((element) => element == "cherry"));
//   // print(a1.indexOf("banana")); // Error: No such method: 'indexOf'
//   // print(a1.indexOf("grape")); // Error: No such method: 'indexOf'
//   // print(a1.indexOf("grape", 2)); // Error: No such method:
//   // 'indexOf'
//   print(a1.indexOf("banana", 0));
//   print(a1.indexOf("banana", 1));
//   print(a1.indexOf("banana", 2));

//   a1[1] = "orange";
//   print(a1); // Output: [apple, orange, cherry]
//   a1.add("grape");
//   print(a1); // Output: [apple, orange, cherry, grape]
//   // a1.remove("grape");
//   // a1.removeAt(2);
//   a1.removeLast();
//   print(a1);
//   a1.removeRange(0, 1); // Remove the first element
//   print(a1);

//   print(a1.contains("apple"));
//   // print(a1);

// // =============================================

//   var a2 = [1, 7, 3, 4, 2, 6];
//   print(a2.reversed.toList());
//   // print(a1);

//   a2.sort();
//   print(a2);
//   // Remove all even numbers
//   a2.removeWhere((num) => num.isEven);
//   print(a2);

// // =================================================

//   // var numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
//   // for (int i = 0; i < numbers.length; i++) {
//   //   print(numbers[i]);
//   // }

//   // var list1 = [1, 2, 3, 4, 5];
//   // var list2 = [...list1,6, 7, 8, 9, 10];
//   // print(list2);

//   //  List<int>? nullableList;
//   // var number = [0, ...?nullableList, 10];
//   // print(number); // Output: [0, 10]

// // var numbers = [1, 2, 3, 4];
// //   var sum = numbers.fold(0, (prev, element) => prev + element);
// //   print(sum); // Output: 10

//   // var numbers = [5, 3, 8, 2];
//   // var maxNumber = numbers.reduce((a, b) => a > b ? a : b);
//   // print(maxNumber); // Output: 8

// void main() {
//   // num number1 = num.parse('42'); // Parses an integer
//   // num number2 = num.parse('3.14'); // Parses a double

//   // print(number1); // 42
//   // print(number2); // 3.14

//   // num? number3 = num.tryParse('invalid'); // Returns null
//   // print(number3); // null

 
// }

// void main() {
//   List<int> fixedEmpty = List.empty(growable: false); // Fixed-length empty list
//   print(fixedEmpty); // []

//   List<int> growableEmpty = List.empty(growable: true); // Growable empty list
//   growableEmpty.add(5);
//   print(growableEmpty); // [5]
// }

// void main() {
//   List<int> numbers = List.filled(5, 0);
//   print(numbers); // [0, 0, 0, 0, 0]

//   numbers[2] = 10;
//   print(numbers); // [0, 0, 10, 0, 0]
// }

// void main() {
//   List<int> squares = List.generate(5, (index) => index * index);
//   print(squares); // [0, 1, 4, 9, 16]
// }

// void main() {
//   List<int> original = [1, 2, 3];
//   List<int> copy = List.of(original);

//   copy.add(4);
//   print(copy); // [1, 2, 3, 4]
// }

// void main() {
//   List<int> readOnly = List.unmodifiable([1, 2, 3]);

//   print(readOnly); // [1, 2, 3]

//   // readOnly.add(4); // This will throw an error
// }