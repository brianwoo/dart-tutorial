
class Counter
{
  static int _count = 0;
  
  int get count => _count;
  void set count(int value) => _count = value;
  
  static void increate() => _count++;
  static void decrease() => _count--;
  
  void addTen() => _count += 10;
  void removeTen() => _count -= 10;
  
  static void printCount() => print(_count);
}


void main(List<String> args) 
{ 
	Counter.printCount();
  Counter.increate();
  Counter.increate();
  Counter.printCount();
  
  
  Counter c = new Counter();
  c.addTen();
  print(c.count);
  c.count = 5;
  print(c.count);
  
  c = null;
  print("c is null");
  
  Counter.printCount();
  
}

