import 'package:flutter/material.dart';

class WWrap extends StatefulWidget {
  @override
  _WWrapState createState() => new _WWrapState();
 }
class _WWrapState extends State<WWrap> {
  @override
  Widget build(BuildContext context) {

   final box = Container(
     margin: EdgeInsets.all(2),
     width: 100,
     height: 100,
     decoration: BoxDecoration(
       color: Colors.red
     ),
     child: null,
   );
  
  final content = Wrap(
    direction: Axis.horizontal,
    alignment: WrapAlignment.center,
    spacing: 10,
    runSpacing: 10,
    children: <Widget>[
      box,
      box,
      box,
      box,
    ],
  );
  
  
    
  final window = Scaffold(
     appBar: AppBar(
       title: Text("Wrap"),
     ),
     body: content,
     
   ); 
  
   return window;
  }
}