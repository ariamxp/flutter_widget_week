import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  @override
  _ViewHomeState createState() => new _ViewHomeState();
 }
class _ViewHomeState extends State<ViewHome> {
  @override
  Widget build(BuildContext context) {

   final content = Container(
     child: Center(
       child: Text("Hola"),
     ),
   );

   var user = UserAccountsDrawerHeader( 
    accountEmail: Text("@ariamxp"),
    accountName: Text("Demo Widgets Weeks"),
    currentAccountPicture: Image.network('https://microhealth.com/assets/images/illustrations/stay-on-track-illustration-@2x.png'),
    decoration: BoxDecoration(color: Colors.blue),
  );


    final menulateral = Drawer(child: SafeArea(
      child: ListView(
        children: <Widget>[
          user,
          ListTile(
            title: Text("1 - SafeArea"),
            trailing: Icon(Icons.widgets),
            onTap: () => Navigator.pushNamed(context, '/safeArea'),
          ),
          Divider(height: 5.0,),
          ListTile(
            title: Text("2 - Expanded"),
            trailing: Icon(Icons.widgets),
            onTap: () => Navigator.pushNamed(context, '/expanded'),
          ),
          Divider(height: 5.0,),
          ListTile(
            title: Text("3 - Wrap"),
            trailing: Icon(Icons.widgets),
            onTap: () => Navigator.pushNamed(context, '/wrap'),
          ),
          Divider(height: 5.0,),
          ListTile(
            title: Text("4 - Animated Container"),
            trailing: Icon(Icons.widgets),
            onTap: () => Navigator.pushNamed(context, '/animatedContainer'),
          ),
          Divider(height: 5.0,),
          
        ],
        ),
      )
     );


   final window = Scaffold(
     appBar: AppBar(
       title: Text("Flutter Widget Week"),
     ),
     body: content,
     drawer: menulateral,
     
   );

   return window;
  }
}


