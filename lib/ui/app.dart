import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'app_layout.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey.shade300,

      body: Stack(
        children: <Widget>[
          CustomAppbar(),
          AppLayout()

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
           icon:Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.live_tv,color: Colors.black45,),
              title: Text("Ongoing")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.scanner,color: Colors.black45),
              title: Text("Scan")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.contacts,color: Colors.black45),
              title: Text("Contacts")
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person,color: Colors.black45),
              title: Text("Profile")
          ),

        ],
        selectedItemColor: Colors.black,
        currentIndex: 0,
      ),
    );
  }
}
