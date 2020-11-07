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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) => HomeList(index),
              itemCount: dashList.length,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),
    );
  }
}
