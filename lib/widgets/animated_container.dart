import 'package:flutter/material.dart';

class WAnimatedContainer extends StatefulWidget {
  @override
  _WAnimatedContainerState createState() => new _WAnimatedContainerState();
 }
class _WAnimatedContainerState extends State<WAnimatedContainer> {

  var i = 1;
  var _color = Colors.yellow;
  var _myDuration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
  
   final boxanime = AnimatedContainer(
     color: _color,
     duration: _myDuration,
     curve: Curves.bounceIn,
     child: Center(
       child: RaisedButton(
         onPressed: () {
           setState(() {
             
             switch (i) {
               case 1:
                 _color = Colors.orange;
                 i++;
                 break;
               case 2:
                 _color = Colors.red;
                 i++;
                 break;
               case 3:
                 _color = Colors.green;
                 i++;
                 break;
               default:
               i=1;
               _color = Colors.yellow;
             }
             

           });
         },
         child: Text("Presiona para cambiar"),
         color: Colors.white,
       ),
     ),
   );

   final window = Scaffold(
     appBar: AppBar(
       title: Text("Animated Container"),
     ),
     body: boxanime,
     
   ); 
  
   return window;

  }
}