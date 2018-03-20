
void asObject(int i) 
{
  print(i);
}

// optional named parameters
int compare({int apples = 0, int oranges = 0})
{
  return (apples.compareTo(oranges));
}

void main(List<String> args) 
{
  List<int> list = new List<int>();
  
  list.add(1);
  list.add(2);
  list.add(3);
  
  // Function as an object
  print("function as an object");
  list.forEach(asObject);
  
  // anonymous function
  print("anonymous function");
  list.forEach((e) {
    print(e);
  });
  
  print("External function");
  // print(Package.calculate());
  print("----");
  
  
  print("Optional named parameters");
  print(compare(apples: 9, oranges: 9));
  print(compare(oranges: 9, apples: 9));
}
