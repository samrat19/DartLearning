void stringMethods(){

  // ignore: omit_local_variable_types
  String string = 'Hello Dart Learners';

  //String Property

  print(string.codeUnits);
  print(string.isEmpty);
  print(string.length);

  //String Methods

  print(string.toLowerCase());
  print(string.trim());
  print(string.compareTo("Hi Dart Learners"));
  print(string.replaceAll("Hello","Hey"));
  print(string.substring(2));
  print(string.split("Hello"));
}