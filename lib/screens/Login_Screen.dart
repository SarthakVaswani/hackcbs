import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackcbs/services/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var datafile = Lconstants.data;

class Loginscreen extends StatefulWidget {
  static const routeName = '/loginScreen';
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController userNameController = TextEditingController();
  bool userNameValidate = false;

  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF84FFFF),
                Color(0xFF18FFFF),
                Color(0xFF00E5FF),
                Color(0xFF00B8D4),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  padding: EdgeInsets.only(top: 1, bottom: 1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        spreadRadius: 0.2,
                        blurRadius: 2,
                        offset: Offset(0, 1.5),
                        color: Colors.lightBlue.withOpacity(0.3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          child: Container(
                            color: Colors.white,
                            child: Icon(
                              MaterialCommunityIcons.email,
                              color: Colors.blue,
                              size: 26.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 18, right: 18),
                            hintText: 'Email ID',

                            hintStyle: GoogleFonts.ptSerif(
                              textStyle:
                                  TextStyle(fontSize: 16, letterSpacing: 1.5),
                            ),
//                      fillColor: Colors.black87,
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  padding: EdgeInsets.only(top: 1, bottom: 1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        spreadRadius: 0.2,
                        blurRadius: 2,
                        offset: Offset(0, 1.5),
                        color: Colors.lightBlueAccent.withOpacity(0.4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          child: Container(
                            color: Colors.white,
                            child: Icon(
                              MaterialCommunityIcons.lock,
                              color: Colors.blue,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          scrollPhysics: NeverScrollableScrollPhysics(),
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 22, right: 10),
                            hintText: '*******',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              letterSpacing: 2.5,
                            ),
//                      fillColor: Colors.black87,
                          ),
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 22.0),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    minWidth: 220,
                    color: Colors.deepPurple.withOpacity(.7),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      login(email, password);
                      Navigator.pushNamed(context, '/dashboard');
                    }),
              ),
              SizedBox(
                height: 175,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'New Here ?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: 30,
                        minWidth: 57,
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamed(context, '/registerScreen');
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  login(email, password) async {
    var url =
        "https://system-parking-hack.herokuapp.com/user/login"; //get request
    final http.Response response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
//
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }));

    if (response.statusCode == 200) {
      datafile = jsonDecode(response.body);
      print(datafile[0]);
    }

    // if (response.statusCode == 201) {
    // } else {
    //   throw Exception('Failed to send ');
    // }
    //  final queryParameters = {
//   'name': 'Bob',
//   'age': '87',
// };
  }
}
