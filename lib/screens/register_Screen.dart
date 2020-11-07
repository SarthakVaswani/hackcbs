import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/registerScreen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var name;
  var email;
  var password;
  var phone;
  var carName;
  var carNumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              onChanged: (value) {
                name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (value) {
                email = value;
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: (value) {
                password = value;
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'phone Number'),
              onChanged: (value) {
                phone = value;
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Car Name'),
              onChanged: (value) {
                carName = value;
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Car Model'),
              onChanged: (value) {
                carNumber = value;
              },
            ),
            MaterialButton(
                color: Colors.red,
                onPressed: () {
                  signup(name, email, password, phone, carName, carNumber);
                }),
          ],
        ),
      ),
    );
  }

  signup(name, email, password, phone, carName, modelNo) async {
    var url =
        "https://system-parking-hack.herokuapp.com/user/signup"; //post request
    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
        'carName': carName,
        'carNumber': carNumber
      }),
    );
    if (response.statusCode == 200) {
      print('ok');
    }

    if (response.statusCode == 201) {
    } else {
      throw Exception('Failed to send.');
    }
  }
}
