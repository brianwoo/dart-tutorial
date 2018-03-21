import 'dart:async';


Future<bool> longWait(String prefix) async 
{
  for (int i=0; i < 5; i++)
  {
    print("$prefix $i");
  }
  return true;
}

Future testAsync() async
{
  print("Starting...");
  bool ret = await longWait("Async");
  print("ret = $ret");
  print("Done");
}

void testThen() 
{
  print("starting");
  longWait("Then").then((bool value) {
    print("done waiting");
  });
  print("done");
}


void testChain() 
{
  print("starting");
  Future f = longWait("Chains");
  f.then((bool value) {
    print("done chain 1");
  }).then((bool value) {
    print("done chain 2");
  }).then((bool value) {
    print("done chain 3");
  });
  
  print("done");
}

Future testMultiple() async 
{
  print("starting");
  
  Future f1 = longWait("one");
  Future f2 = longWait("two");
  Future f3 = longWait("three");
  
  await Future.wait([f1,f2,f3]);
  print("done");
}



void main(List<String> args) 
{ 
	//testAsync();
  //testThen();
  //testChain();
  testMultiple();
}

