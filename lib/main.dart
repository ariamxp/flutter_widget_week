import 'package:flutter/material.dart';
import 'package:widget_week/views/view_home.dart';
import 'package:widget_week/widgets/safe_area.dart';


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
      '/safeArea': (context) => WUnsafe()
    },
  );

  runApp(myApp);
  

}