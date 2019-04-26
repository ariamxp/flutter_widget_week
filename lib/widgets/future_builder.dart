import 'package:flutter/material.dart';
import 'package:http/http.dart'; // Agredar dependencia de http: en el pubspec.yaml

class WFutureBuilder extends StatefulWidget {
  @override
  _WFutureBuilderState createState() => new _WFutureBuilderState();
 }
class _WFutureBuilderState extends State<WFutureBuilder> {
  
  final Client http = Client();

  @override
  Widget build(BuildContext context) {

   final objetoFuturo = FutureBuilder(
     future: http.get('https://jsonplaceholder.typicode.com/posts/1'),
     builder: (context, snapshot){
       if (snapshot.connectionState == ConnectionState.done) {
         if (snapshot.hasError) {
           return Text("Se encontró al conectar con los datos");
         } else {
           return Text("Se recibieron los datos");
         }
       } else {
         return CircularProgressIndicator();
       }
       
     },
   );

   final content = Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     child: Center(
       child: objetoFuturo,
     ),
   );

   final window = Scaffold(
     appBar: AppBar(
       title: Text("Future Builder"),
     ),
     body: content,
     
   ); 
  
   return window;
  }
}