import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackcbs/model/dash.dart';
import 'package:hackcbs/screens/firstpage.dart';
import 'package:hackcbs/screens/secondpage.dart';
import 'package:hackcbs/screens/thirdpage.dart';

class HomeList extends StatelessWidget {
  final int index;
  const HomeList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ()  {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) =>
              SlotPicker(),),
            );

          },
          child: Container(
            decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage(dashList[index].image),
//          ),
             color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
        ),
      ),
    );
  }
}
