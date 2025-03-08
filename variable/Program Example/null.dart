void main() {
//   var name;
//   print('name $name');

//   int? name1;
//   print('name $name');

//   String sawmi = 'Alice';
// // name cannot be assigned null later.

//   String? manav;
//   print(manav); // Outputs: null
//   manav = 'Bob';
//   print(manav); // Outputs: Bob

// //null aware access
//   String? hi;
//   print(hi?.length); // If name is null, this evaluates to null.
// // When you try to access name?.length:
// // If name is not null: The length property of the string would be accessed, and the length of the string would be printed.
// // If name is null: The ?. operator prevents a NullPointerException and instead evaluates the expression as null.
//   hi = 'Manav Patel';
//   print(hi?.length); // Outputs: 11
//    // Asserts name is non-null.

//    String? bye;
// print(bye ?? 'No name provided'); // Prints the default message if name is null.



  // Non-nullable variable: must have a value.
  String greeting = 'Hello, Dart!';
  print(greeting.length); // Safe to access, since greeting is never null.

  // Nullable variable: might be null.
  String? nickname;
  // Using the null-aware operator to avoid an error:
  print(nickname?.length); // Prints: null because nickname is not initialized.

  // Providing a default value with the null-coalescing operator.
  print(nickname ?? 'No nickname available'); // Prints: No nickname available
  //   int? lineCount;
  // assert(lineCount == null);



  // If you are sure a variable is not null, you can assert it:
  nickname = 'Ace';
  print(nickname!.length); // Safely prints: 3


}
