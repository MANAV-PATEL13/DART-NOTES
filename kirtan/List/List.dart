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
