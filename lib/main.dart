import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackcbs/screens/Login_Screen.dart';
import 'package:hackcbs/screens/slot.dart';
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
      home: Dash(),
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        Loginscreen.routeName: (_) => Loginscreen()
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
              'Title',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MaterialButton(
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                            width: 80,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                wordSpacing: 0.75,
                              ),
                            )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerScreen');
                        }),
                    MaterialButton(
                        child: Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(10),
                            child: Text("Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  wordSpacing: 0.75,
                                ))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginScreen');
                        })
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
