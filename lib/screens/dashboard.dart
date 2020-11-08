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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/map.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Text(
                  'Select your location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      HomeList(
                        name: 'CP',
                        image: 'assets/images/ONE.jpg',
                        page: '/firstPage'.routeName,arguments:{
                          'ukey':1;
                        },
                        ukey: 1,
                      ),
                      HomeList(
                        name: 'NSP',
                        image: 'assets/images/second.jpg',
                        page: '/secondPage',
                        ukey: 2,
                      ),
                      HomeList(
                        name: 'VIPS',
                        image: 'assets/images/third.jpg',
                        page: '/thirdPage',
                        ukey: 3,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
