void main() {
  
  Lion leo = new Lion();
  leo.speak();
  
  monster m = new monster();
  m.speak();
}


abstract class Mammal 
{
	bool hasBackbone();
  bool hasHair();
  void speak() => print("hello world");
}


abstract class Feline extends Mammal
{
  bool hasClaws();
}


class Lion extends Feline
{
  bool hasBackbone() 
  {
    return true;
  }
  
  bool hasHair() 
  {
    return true;
  }
  
  bool hasClaws() 
  {
    return true;
  }
}



class monster implements Feline
{
  
  bool hasBackbone() 
  {
    return true;
  }
  
  bool hasHair() 
  {
    return true;
  }
  
  bool hasClaws() 
  {
    return true;
  }
  
  void speak() => print("2fasfafwefawe");
}
