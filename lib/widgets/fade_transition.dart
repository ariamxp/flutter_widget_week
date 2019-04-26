import 'package:flutter/material.dart';
import 'fade_transition_animation.dart';

class WFadeTransition extends StatefulWidget {
  @override
  _WFadeTransitionState createState() => new _WFadeTransitionState();
 }
class _WFadeTransitionState extends State<WFadeTransition> {
  

  @override
  Widget build(BuildContext context) {

   final objeto = WFadeTransitionAnimation(child: Text("Texto Opacity"));

   final content = Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height,
     child: Center(
       child: objeto,
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