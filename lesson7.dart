void main() {

  House house = new House(5, 6);
  house.printMe();
}


class House 
{
  int width = 0;
  int length =  0;
    
  House(int width, int length) 
  {
  	this.width = width;
    this.length = length;
  }  
  
  
  void printMe()
  {
    this.width = 5;
    print("width = $width");
  }
}
