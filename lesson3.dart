void main(List<String> args) {
  
  int test = 1;
  bool isOn = true;
 	if (!isOn)
  {
    print("it's OFF!");
  }
  else if (test == 1)
  {
    print("test == 1");
  }
  else 
  {
  	print("it's ON!");  
  }
  
  
  test = 4;
  
  // switch
  switch(test) {
    case 0: 
      print("test is 0");
      break;
      
    case 1:
      print("test is 1");
      break;
      
    case 2:
      print("test is 2");
      break;
      
    default:
      print("haha default");
      break;
  }
  
  
}
