import 'dart:async';
import 'dart:math';

void main(List<String> args) 
{
  var future = networkCall();
  print("Called networkCall() - returned future obj");
  
  future.then((id) {
    print("networkCall is done! complete");
  });

}



Future networkCall() 
{
  var completer = new Completer<String>();
  
  new Timer(new Duration(seconds: 2), () {
    var id = new Random().nextInt(100);
    completer.complete(id.toString());
  });
  
  return completer.future;
}

