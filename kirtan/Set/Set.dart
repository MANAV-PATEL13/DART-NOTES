// void main() {
//   var person = Map<String, String>();
//   person['name'] = 'John';
//   person['age'] = '25';
//   print(person); // Output: {name: John, age: 25}
// }

// void main() {
//   var men = Map<String, String>();
//   men['name'] = 'John';
//   men['age'] = '25';
//   men['gender'] = 'male';
//   print(men); // Output: {name: John, age: 25, gender:male}
// }

main() {
  // var person = {"name": "kirtan", "age": 19};
  // print(person); // Output: {name: kirtan, age: 19}

  Map<int, String> employee = {101: 'kirtan', 102: 'meet'};
  print(employee); // Output: {101: kirtan, 102: meet}
  print(employee[101]); // Output: kirtan
  print(employee.values);
  print(employee.keys);
  print(employee.length == 2);

  var person = {'name': 'john'};
  person['age'] = 18 as String;
  print(person);

  // final constantMap = const {2: 'helium', 10: 'neon', 18: 'argon'};

// constantMap[2] = 'Helium'; // This line will cause an error.
}
