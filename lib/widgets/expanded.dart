import 'package:flutter/material.dart';

class WExpanded extends StatefulWidget {
  @override
  _WExpandedState createState() => new _WExpandedState();
 }
class _WExpandedState extends State<WExpanded> {
  @override
  Widget build(BuildContext context) {
    
   final box1 = Container(
     margin: EdgeInsets.all(2),
     width: double.infinity,
     height: 100,
     decoration: BoxDecoration(
       color: Colors.green
     ),
   );

   final box2 = Container(
     margin: EdgeInsets.all(2),
     width: double.infinity,
     height: 100,
     decoration: BoxDecoration(
       color: Colors.yellow
     ),
   );

   final fila1 = Row(
      children: <Widget>[
        Expanded(
          child: box1,
          flex: 1,
        ),
        Expanded(
          child: box2,
          flex: 2,
        ),
        Expanded(
          child: box1,
          flex: 1,
        ),
        Expanded(
          child: box2,
          flex: 2,
        ),
        
      ],
    );

  final fila2 = Row(
      children: <Widget>[
        Expanded(
          child: box1,
          flex: 1,
        ),
        Expanded(
          child: box2,
          flex: 3,
        ),
        Expanded(
          child: box1,
          flex: 1,
        ),
        Expanded(
          child: box2,
          flex: 4,
        ),
        
      ],
    );
  
  final fila3 = Row(
      children: <Widget>[
        Expanded(
          child: box1,
          flex: 3,
        ),
        Expanded(
          child: box2,
          flex: 2,
        ),
        Expanded(
          child: box1,
          flex: 1,
        ),
        Expanded(
          child: box2,
          flex: 2,
        ),
        
      ],
    );
  
  final columnas = Column(
    children: <Widget>[
      fila1,
      fila2,
      fila3
    ],
  );
  
  
    
  final window = Scaffold(
     appBar: AppBar(
       title: Text("Expanded"),
     ),
     body: columnas,
     
   ); 
  
   return window;
  }
}