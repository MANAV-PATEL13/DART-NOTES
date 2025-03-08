// void logEvent(String event,_) {
//   // The second parameter is ignored.
//   print('Event: $event & $num');
// }
// void main() {
//   logEvent('UserLoggedIn', 42); // The value 42 is ignored.
// }

// void main() {
//   // Suppose we want to print "Hello" 5 times:
//   // We don't need to use the loop variable, so we use '_'.
//   for (var _ in Iterable.generate(5)) {
//     print("Hello");
//   }
// }

void main() {
  // Calling a function for its side effect, but we don't need the result.
  // By assigning the result to '_', we indicate that we intentionally ignore it.
  var _ = performSideEffect();
  
  print('hello');
  // Continue with other code...
}

void performSideEffect() {
  print("Side effect executed");
}
