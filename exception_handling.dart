void main(List<String> args) {
  
	try
  {
    //int value = int.parse("hi");
    throw "blahblah";
  }
  on FormatException catch(e)
  {
    print("exception caught $e");
  }
  catch(e)
  {
    print("exception caught everything $e");
  }
  finally
  {
    print("finally");
  }
}