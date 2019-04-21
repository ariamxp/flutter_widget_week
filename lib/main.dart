import 'package:flutter/material.dart';
import 'package:widget_week/views/view_home.dart';
import 'package:widget_week/widgets/safe_area.dart';
import 'package:widget_week/widgets/expanded.dart';
import 'package:widget_week/widgets/wrap.dart';
import 'package:widget_week/widgets/animated_container.dart';


void main() {

  final myApp = MaterialApp(
    title: "Como va Jorge?",
    theme: ThemeData(
      primaryColor: Color(0xFF5FAAD5),
      accentColor: Color(0xFFBF1D2E)
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => ViewHome(),
      '/safeArea': (context) => WUnsafe(),
      '/expanded': (context) => WExpanded(),
      '/wrap': (context) => WWrap(),
      '/animatedContainer': (context) => WAnimatedContainer(),
    },
  );

  runApp(myApp);
  

}