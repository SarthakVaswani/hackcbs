import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Loginscreen extends StatefulWidget {
  static const routeName = '/loginScreen';
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/login.png',
              ),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Name'),
                onChanged: (value) {
                  email = value;
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  email = value;
                },
              ),
              MaterialButton(onPressed: () {
                signup(email, email);
              }),
            ],
          ),
        ),
      ),
    );
  }

  signup(name, email) async {
    var url = "http://127.0.0.1:5000";
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 201) {
    } else {
      throw Exception('Failed to create album.');
    }
  }
}
