import 'dart:developer';

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
        body: Column(
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
            MaterialButton(
                color: Colors.red,
                onPressed: () {
                  login(email, email);
                }),
          ],
        ),
      ),
    );
  }

  login(email, password) async {
    var url =
        "https://system-parking-hack.herokuapp.com/user/login"; //get request
    final http.Response response =
        await http.get(url, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }
//       final queryParameters = {
//   'name': 'Bob',
//   'age': '87',
// };
//       body: jsonEncode(<String, String>{
//         'email': email,
//         'password': password,
//       }),
            );
    // if (response.statusCode == 200) {
    //   return response.k
    // }

    if (response.statusCode == 201) {
    } else {
      throw Exception('Failed to send ');
    }
  }
}
