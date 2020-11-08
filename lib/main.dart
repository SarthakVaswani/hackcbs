import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackcbs/screens/Login_Screen.dart';
import 'package:hackcbs/screens/firstpage.dart';
import 'package:hackcbs/screens/secondpage.dart';
import 'package:hackcbs/screens/thirdpage.dart';

import 'screens/dashboard.dart';
import 'package:hackcbs/screens/register_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        Loginscreen.routeName: (_) => Loginscreen(),
        Dash.routeName: (_) => Dash(),
        SlotPicker.routeName: (_) => SlotPicker(),
        SlotPicker2.routeName: (_) => SlotPicker2(),
        SlotPicker3.routeName: (_) => SlotPicker3()
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'Parking System',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff130f40)),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'I am a very firm believer in karma, and put it this way: I get a lot of good parking spots.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
//                     color: Colors.deepPurple.withOpacity(.6)
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/login.png',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 50,
                        minWidth: 200,
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerScreen');
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 50,
                        minWidth: 200,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginScreen');
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
