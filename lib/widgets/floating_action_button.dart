import 'package:flutter/material.dart';

class WFloatingAnimation extends StatefulWidget {
  @override
  _WFloatingAnimationState createState() => new _WFloatingAnimationState();
 }
class _WFloatingAnimationState extends State<WFloatingAnimation> {
  

  @override
  Widget build(BuildContext context) {

   final content = Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     child: Center(
       child: Text("Hello!"),
     ),
   );

   final window = Scaffold(
     appBar: AppBar(
       title: Text("Floating Action Button"),
     ),
     body: content,
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       onPressed: (){},
     ),
     bottomNavigationBar: BottomAppBar(
       color: Colors.blueGrey,
       child: Container(height: 50,),
     ),
     floatingActionButtonLocation: 
     FloatingActionButtonLocation.centerDocked,
     
   ); 
  
   return window;
  }
}