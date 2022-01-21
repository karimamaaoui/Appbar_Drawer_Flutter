import 'package:appbar_drawer/pages/Account.dart';
import 'package:appbar_drawer/pages/Home.dart';
import 'package:appbar_drawer/pages/Message.dart';
import 'package:appbar_drawer/pages/Seetings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primaryColor: Color(0xff8DB3A0),
      home:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        // simple app bar
    /*    appBar: AppBar(
          backgroundColor: Color(0xff8DB3A0),
          elevation: 0,
          title: Text("APPBAR"),
          leading: IconButton(onPressed: (){
            //open menu
          },
          icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: (){
              //account
            },
              icon: Icon(Icons.person),
            ),

            IconButton(onPressed: (){
              //sharing
            },
              icon: Icon(Icons.share),
            ),

          ],
        ),*/
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          elevation: 0,
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurple[200],
            child: ListView(
              children: [
                DrawerHeader(
                    child:  Center(
                        child:Text("LOGO APP ",style: TextStyle(fontSize: 50),)
        ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page",style: TextStyle(fontSize: 20)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home()));            },
          ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account Page",style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Account()));            },
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Message Page",style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Message()));            },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings Page",style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));            },
                )

              ],
            ),
          ),
        ),

    );}}
