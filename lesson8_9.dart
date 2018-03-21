void main() {
  
  Lion l = new Lion();
  l.test();
  l.rour();
}


class Mammal 
{
	bool hasBackbone() => true;
  bool hasHair() => true;
}



class Feline extends Mammal
{
  bool hasClaws() => true;
  
  void test() 
  {
    print("test Feline");
    assert(hasBackbone());
    assert(hasHair());
  }
}


class Lion extends Feline
{
  void rour() => print("roar");
  
  void test()
  {
    print("test Lion");
    assert(hasBackbone());
    assert(hasHair());
    assert(hasClaws());
    
    super.test();
  }
}

