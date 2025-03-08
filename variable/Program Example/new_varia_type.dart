void main() {
  //list
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('List: $fruits'); // Output: List: [Apple, Banana, Cherry]
  print('List: ${fruits.join(', ')}'); // Output: List: Apple, Banana, Cherry

  //set
  Set<int> uniqueNumbers = {1, 2, 5, 3, 2}; //don't print repet ative values
  print('Set: $uniqueNumbers'); // Output: Set: {1, 2, 3}
  print('Set: ${uniqueNumbers.join(',')}');

  //Map
  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };
  print('Map: $ages'); // Output: Map: {Alice: 30, Bob: 25, Charlie: 35}

  //
  String heart = 'ma';//print decimal value of the character😊,#,a....
  Runes runes = heart.runes;
  print('Runes: ${runes.toList()}'); // Output: Runes: [10084, 65039]

  //symbol
  Symbol mySymbol = #example;
  print('Symbol: $mySymbol'); // Output: Symbol: Symbol("example")

  //object
  Object obj = 'I am an object';
  print('Object: $obj'); // Output: Object: I am an object


/**
 
 *  void main() {
  // 1. Numbers
  // Dart supports whole numbers (int), floating-point numbers (double), and a common type (num) that can hold either.
  
  int wholeNumber = 42;
  double pi = 3.14159;
  num flexibleNumber = 10; // Initially an int
  flexibleNumber = 10.5;   // Now holds a double

  print('Int: $wholeNumber');         // Output: Int: 42
  print('Double: $pi');               // Output: Double: 3.14159
  print('Num (int then double): $flexibleNumber'); // Output: Num (int then double): 10.5

  // 2. Boolean
  // The bool type represents true/false values and is commonly used in conditions.
  
  bool isDartFun = true;
  bool isLearning = false;
  print('Boolean isDartFun: $isDartFun'); // Output: Boolean isDartFun: true
  print('Boolean isLearning: $isLearning'); // Output: Boolean isLearning: false

  // 3. Strings
  // Strings are sequences of characters. You can use either single or double quotes.
  
  String greeting = 'Hello, Dart!';
  String message = "Dart is awesome.";
  print('String greeting: $greeting'); // Output: String greeting: Hello, Dart!
  print('String message: $message');   // Output: String message: Dart is awesome.

  // 4. Collections
  // Dart provides various collection types like List, Set, and Map.

  // List: An ordered collection of items.
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('List of fruits: $fruits');  // Output: List of fruits: [Apple, Banana, Cherry]

  // Set: An unordered collection of unique items.
  Set<int> uniqueNumbers = {1, 2, 3, 2};
  print('Set of unique numbers: $uniqueNumbers'); // Output: Set of unique numbers: {1, 2, 3}

  // Map: A collection of key-value pairs.
  Map<String, int> ages = {
    'Alice': 30,
    'Bob': 25,
    'Charlie': 35,
  };
  print('Map of ages: $ages'); // Output: Map of ages: {Alice: 30, Bob: 25, Charlie: 35}

  // 5. Runes
  // Runes represent Unicode code points. They are useful for handling characters outside the basic multilingual plane.
  
  String heartEmoji = '❤️';
  Runes heartRunes = heartEmoji.runes;
  print('Runes for heart emoji: ${heartRunes.toList()}'); // Output might be: [10084, 65039]

  // 6. Symbols
  // Symbols are used to refer to identifiers by name. They are mostly useful in reflection and meta-programming.
  
  Symbol mySymbol = #myExample;
  print('Symbol: $mySymbol'); // Output: Symbol("myExample")

  // 7. Dynamic
  // Dynamic allows the variable’s type to change at runtime, but it sacrifices compile-time type checking.
  
  dynamic variable = 'Hello, world!';
  print('Dynamic as String: $variable'); // Output: Dynamic as String: Hello, world!
  variable = 123; // Changing type to int
  print('Dynamic as int: $variable');    // Output: Dynamic as int: 123

  // 8. Object
  // Object is the base type for all Dart objects. Every type in Dart is a subclass of Object.
  
  Object genericObject = 'I can be any object';
  print('Object: $genericObject'); // Output: Object: I can be any object
}


 */

}



