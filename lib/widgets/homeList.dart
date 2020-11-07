import 'package:flutter/material.dart';
import 'package:hackcbs/model/dash.dart';

class HomeList extends StatelessWidget {
  final int index;
  const HomeList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Hero(
          tag: dashList[index].id,
          child: ListTile(
            title: Text(
              dashList[index].name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
      ),
    );
  }
}
