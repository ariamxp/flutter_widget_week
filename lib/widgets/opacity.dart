import 'package:flutter/material.dart';

class WOpacity extends StatefulWidget {
  @override
  _WOpacityState createState() => new _WOpacityState();
 }
class _WOpacityState extends State<WOpacity> {

  var i = 1;
  var _opacity = 0.25;
  var _myDuration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
  
   final boxanime = Column(
     children: <Widget>[
       Container(
         margin: EdgeInsets.only(top: 10, left: 10, right: 10),
         width: double.infinity,
         height: 150,
         color: Colors.blue,
       ),
       Opacity(
         opacity: 0.25,
         child: Container(
         margin: EdgeInsets.only(top: 10, left: 10, right: 10),
         width: double.infinity,
         height: 150,
         color: Colors.red,
        ),
       ),
       Container(
         margin: EdgeInsets.only(top: 10, left: 10, right: 10),
         width: double.infinity,
         height: 150,
         color: Colors.blue,
       ),
       AnimatedOpacity(
         opacity: _opacity,
         duration: _myDuration,
         child: Container(
         margin: EdgeInsets.only(top: 10, left: 10, right: 10),
         width: double.infinity,
         height: 150,
         color: Colors.red,
         child: Center(
           child: RaisedButton(
             child: Text("Presiona para quitar Opacidad"),
             onPressed: (){
               setState(() {
                 if (_opacity==0.25) {
                   _opacity = 1;
                 } else {
                   _opacity = 0.25;
                 }
                 
               });
             },
           ),
         ),
        ),
       )
     ],
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



