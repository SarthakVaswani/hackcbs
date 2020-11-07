import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    'assets/images/user.png',
                  ),
                ),
                SizedBox(
                  height: 15,
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
                          blurRadius: 3,
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
                                MaterialCommunityIcons.account,
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
                              hintText: 'Name',

                              hintStyle: GoogleFonts.ptSerif(
                                textStyle:
                                    TextStyle(fontSize: 16, letterSpacing: 1.5),
                              ),

//                      fillColor: Colors.black87,
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              name = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                          blurRadius: 3,
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
                            keyboardType: TextInputType.emailAddress,
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
                          blurRadius: 3,
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
                SizedBox(
                  height: 15,
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
                          blurRadius: 3,
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
                                MaterialCommunityIcons.phone,
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
                              hintText: 'Phone number',
                              hintStyle: GoogleFonts.ptSerif(
                                textStyle:
                                    TextStyle(fontSize: 16, letterSpacing: 1.5),
                              ),

//                      fillColor: Colors.black87,
                            ),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              phone = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                          blurRadius: 3,
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
                                MaterialCommunityIcons.car,
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
                              hintText: 'Car Name',
                              hintStyle: GoogleFonts.ptSerif(
                                textStyle:
                                    TextStyle(fontSize: 16, letterSpacing: 1.5),
                              ),

//                      fillColor: Colors.black87,
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              carName = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                          blurRadius: 3,
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
                                MaterialCommunityIcons.car_key,
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
                              hintText: 'Car Model',
                              hintStyle: GoogleFonts.ptSerif(
                                textStyle:
                                    TextStyle(fontSize: 16, letterSpacing: 1.5),
                              ),

//                      fillColor: Colors.black87,
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (value) {
                              carNumber = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
//
                MaterialButton(
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue[600],
                    onPressed: () {
                      signup(name, email, password, phone, carName, carNumber);
                    }),
              ],
            ),
          ),
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
