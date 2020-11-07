import 'package:flutter/material.dart';
import 'package:hackcbs/model/dash.dart';
import 'package:hackcbs/widgets/homeList.dart';

class Dash extends StatefulWidget {
  static const routeName = '/dashboard';
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                'Select your location',
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 700,
              child: ListView.builder(
                itemBuilder: (context, index) => HomeList(index),
                itemCount: dashList.length,
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
