// 1️⃣ Default String Creation (Literals)
// 📌 Note: Dart does not provide an explicit String() constructor.

void main() {
  // String s1 = "Hello, Dart!";   // Using double quotes
  // String s2 = 'Welcome!';       // Using single quotes

  // print(s1);  // Output: Hello, Dart!
  // print(s2);  // Output: Welcome!

// ✅ Multi-line Strings:
// Use ''' or """ for multi-line strings.
  // String kirtan = '''This is
  // a multi-line
  // string.''';

  // print(kirtan);

// 2️⃣ String.fromCharCodes() – Create String from Unicode

  //   List<int> unicodeValues = [72, 101, 108, 108, 111];  // Unicode for "Hello"
  // String result = String.fromCharCodes(unicodeValues);

  // print(result);  // Output: Hello


  // 3️⃣ String.fromCharCode() – Create Single Character from Unicode

  //   String char = String.fromCharCode(65); // Unicode 65 → 'A'

  // print(char);  // Output: A

  // 4️⃣ String.fromEnvironment() – Get String from Environment Variables

  //   const String apiKey = String.fromEnvironment("API_KEY", defaultValue: "No API Key Found");

  // print(apiKey);  // Output: No API Key Found (unless environment variable exists)


}
