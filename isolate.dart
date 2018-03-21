void main(List<String> args) 
{ 
  var response = new ReceivePort();
  Future<Isolate> remote = Isolate.spawn(echo, response.sendPort);
  remote.then((_) => response.first).then((sendPort) {
    sendReceive(sendPort, "foo").then((msg) {
      print("received: $msg");
      return sendReceive(sendPort, "bar");
    }).then((msg) {
      print("received another: $msg");
    });
  });
}


Future sendReceive(SendPort port, msg) 
{
  ReceivePort response = new ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}


void echo(SendPort initialReplyTo) 
{
  var port = new ReceivePort();
  initialReplyTo.send(port.sendPort);
  port.listen((msg) {
    var data = msg[0];
    SendPort replyTo = msg[1];
    replyTo.send(data);
    if (data == "bar") port.close();
  });
}