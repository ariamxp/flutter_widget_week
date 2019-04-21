import 'package:flutter/material.dart';

class WUnsafe extends StatefulWidget {
  @override
  _WUnsafeState createState() => new _WUnsafeState();
 }
class _WUnsafeState extends State<WUnsafe> {
  @override
  Widget build(BuildContext context) {

  final content = Container(
     child: ListView(
       children: List.generate(
         100, 
         (i) => Text("This is some text")),
     ),
   );

  final safeArea = SafeArea(
    child: content,
    top: true,
    bottom: true,
    left: false,
    right: true,
  );
    
  final window = Scaffold(
     appBar: AppBar(
       title: Text("Flutter Widget Week"),
     ),
     body: safeArea,
     
   ); 
  
   return window;

  }
}