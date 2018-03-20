void main(List<String> args) {

  print('hello world');
  
  var something = 'hello world 1';
  something = 'cats rule';
  print(something);
  
  const nope = 1;
	//   nope = 2;
  
  final noper = 1;   // final must have a value assigned
	//   noper = 2;
  
  // Boolean
  bool isWorking = false;
  isWorking = true;
  
	// Numbers
  num age = 12;
  age += 30;
  print('age is = $age');
  print('age 2 is = ' + age.toString());
  
  int cats = 1;
  double pi = 3.14;
  
  // strings are characters
  String title = "Hello world!";
  title += " My Kittens!";
  print(title);
  
  String substring = title.substring(0, 4);
  print(substring);
  
  String replaceStr = title.replaceAll("ll", "zz");
  print(replaceStr);
  
  String names = "Bryan,Heather,Chris,Karl";
  assert(names.contains("Heather"));
  //assert(names.contains("junk"));
  
  List<String> list = names.split(',');
  print(list);
  print(list.elementAt(2));
  print(list[2]);
  
  list.add("Bob");
  print(list);
  
  list.insert(1, "Ford");
  print(list);
  
  print(list.indexOf("Karl"));
  
  list.forEach((v) {
    print(v);
  });
  
  // Maps
  Map<String, int> ages = {
    "Bryan" : 43,
    "Heather" : 24,
    "Karl" : 47
  };
  print(ages);
  print(ages.keys);
  print(ages.values);
  
  print(ages['Bryan']);
  
  ages['Marc'] = 50;
  print(ages['Marc']);
  
  ages.forEach((k,v) {
    print('$k is $v years old!');
  });
}
