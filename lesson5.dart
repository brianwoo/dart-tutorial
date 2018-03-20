void sayHello() 
{
  for (int i=0; i < 5; i++)
  {
    print("hello $i");
  }
}


void annoy(int times)
{
  for (int i=0; i < 5; i++)
  {
    print("annoy $i");
  }
}


String defaultValue([String first = "Bryan", String last = "Janna"])
{
  return first + " " + last;
}

void main(List<String> args) 
{
  sayHello();
  annoy(1);
  print(defaultValue("Bill", "Gates"));
}
