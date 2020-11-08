import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackcbs/model/dash.dart';
import 'package:hackcbs/screens/firstpage.dart';
import 'package:hackcbs/screens/secondpage.dart';
import 'package:hackcbs/screens/thirdpage.dart';

class HomeList extends StatelessWidget {
  final String page;
  final String name;
  final String image;
  final int ukey;
  final String mapp;
  const HomeList({this.page, this.image, this.name, this.ukey, this.mapp});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1,
      width: 265,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(page);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
