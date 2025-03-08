void main() {
  var manav = 4;
  //int manav = 4;Error: The final variable 'manav' already has a value.
  print('Hello world');
  print('hello' + ' world');
  manav = 20;
  print(manav);
  print(manav * 2);
  print('this is manav : $manav');

  //double variable
  double manav111 = 12.546;
  print(manav111);

  //num
  num someNumber = 10;     // Could be an int
  print('Num as int: $someNumber'); // Output: Num as int: 10

  someNumber = 10.5;       // Now a double
  print('Num as double: $someNumber'); // Output: Num as double: 10.5

  //boolean
  bool isDartFun = true;
  print('Boolean: $isDartFun'); // Output: Boolean: true

  //string
  String greeting = 'Hello, Dart!';
  print('String: $greeting'); // Output: String: Hello, Dart!


}
