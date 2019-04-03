import 'package:learning_dart/learning_dart.dart' as learning_dart;

main(List<String> arguments) {
  print('Hello world: ${learning_dart.calculate()}!');
  print('I drive 15 miles or ${learning_dart.milesToKm(15)} km to work');

  var firstName = 'John'; // could be reassigned to another value but same type
  String lastName = 'Doe';
  Object fullName = firstName + ' ' + lastName; // could be reassigned to another value and type

  print('My first name is ${firstName}');
  print('My last name is ${lastName}');
  print('My full name is ${fullName}');

  firstName = 'Chris';
  fullName = 25;

  print('Another first name is ${firstName}');
  print('Reassigned Object type from string to int ${fullName}');

  int age;
  assert(age != null); // will throw an exception if code is run with --enable-asserts flag

  final String fullNameUpperCase = 'JOHN DOE';

  print('Final variable ${fullNameUpperCase}');

  age = 18;
  double pi = 3.14;

  print('age is ${age} and pi is ${pi}');

  // converting string to numbers and numbers to string
  int convertedIntFromString = int.parse('1');
  var convertedDoubleFromString = double.parse('5.5');
  String convertedStringFromInt = 5.toString();
  var convertedStringFromDouble = 3.1478645.toStringAsFixed(2);

  print('convertedIntFromString: ${convertedIntFromString}');
  print('convertedDoubleFromString: ${convertedDoubleFromString}');
  print('convertedStringFromInt: ${convertedStringFromInt}');
  print('convertedStringFromDouble: ${convertedStringFromDouble}');

  String concatenatedString = 'game of thrones is awesome.'
    ' clegane bowl needs to happen asap.'; // strings can be concatenated over multiple lines
  String multiLineString = '''this is a multiline string
    so cool!''';
  print('concatenatedString: ${concatenatedString}');
  print('multiLineString: ${multiLineString}');

  bool firstBoolean = true;
  bool secondBoolean = !firstBoolean;
  print('firstBoolean: ${firstBoolean}\tsecondBoolean: ${secondBoolean}');

  // loops
  List<int> coolList = [];
  Map<int, String> map = {};
  for (int i = 0; i < 10; i++) {
    coolList.add(i);
    map[i] = 'hello map ${i}';
  }
  for (int i = 0; i < coolList.length; i++) {
    if (coolList[i] % 2 == 0) print(i);
    else print('skipping odd numbers');
  }
  for (int i in map.keys) {
    print('printing values from map: ${map[i]}');
  }

  print('double of 2 is ${doubleInt(2)}');
  print('string 1: john; string 2: doe\tis length same? ${isStringLengthSame('john', 'doe')}');
  print('function with named parameters: ${namedParametersFunction(a: 3, b: 7)}');
  print('function with optional positional parameters: ${getDescription('john doe', 72)}');
  print('function with optional positional parameters: ${getDescription('john doe', 87, 'melbourne')}');
}

int doubleInt(int a) => a * 2; // one line function

bool isStringLengthSame(String a, String b) { // regular function
  return a.length == b.length;
}

int namedParametersFunction({int a, int b}) { // function with named parameters
  return a + b;
}

String getDescription(String name, int age, [String city]) { // function with optional positional parameters
  String result = 'my name is ${name} and i am ${age} year old.';
  if (city != null) result = '${result} also, i am from ${city}.';
  return result;
}