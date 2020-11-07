import 'package:flutter/material.dart';
import 'package:hackcbs/model/dash.dart';

class HomeList extends StatelessWidget {
  final int index;
  const HomeList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      child: Card(
        child: Hero(
          tag: dashList[index].id,
          child: ListTile(
            title: Text(dashList[index].name),
          ),
        ),
      ),
    );
  }
}
