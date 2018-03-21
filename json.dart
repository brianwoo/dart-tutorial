import 'dart:convert';

void main(List<String> args) 
{ 
  var data = '{"movie" : "star wars", "actors" : "Harrison Ford"}';
  
  var jsonObj = JSON.decode(data);
  print(jsonObj['movie']);
  
  String jsonStr = JSON.encode(jsonObj);
  print(jsonStr);
}