import 'package:flutter/material.dart';

class WFadeTransitionAnimation extends StatefulWidget {
  final Widget child;
  WFadeTransitionAnimation({@required this.child});
  @override
  _WFadeTransitionAnimationState createState() => new _WFadeTransitionAnimationState();
 }
class _WFadeTransitionAnimationState extends State<WFadeTransitionAnimation> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState(){
    _controller = AnimationController(
     vsync: this,
     duration: Duration(seconds: 2)
   );

   _animation = Tween(
     begin: 0.0,
     end: 1.0
   ).animate(_controller);

  }
  
   @override
   dispose(){
     _controller.dispose();
     super.dispose();
   }
  
  @override
  Widget build(BuildContext context) { 

  _controller.forward();

   return FadeTransition(
       opacity: _animation,
       child: widget.child,
     );

  }
}