import 'package:flutter/material.dart';
import 'package:hackcbs/screens/Login_Screen.dart';
import 'package:hackcbs/screens/dashboard.dart';
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
        Loginscreen.routeName: (_) => Loginscreen(),
        Dash.routeName: (_) => Dash()
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
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            MaterialButton(
                child: Text("Register"),
                onPressed: () {
                  Navigator.pushNamed(context, '/registerScreen');
                }),
            MaterialButton(
                child: Text("Login"),
                onPressed: () {
                  Navigator.pushNamed(context, '/loginScreen');
                })
          ],
        ),
      )),
    );
  }
}
