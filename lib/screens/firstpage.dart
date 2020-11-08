import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class SlotPicker extends StatefulWidget {
//  final ukey;
//  SlotPicker({this.ukey});

  static const routeName = '/firstPage';
  @override
  _SlotPickerState createState() => _SlotPickerState();
}

class _SlotPickerState extends State<SlotPicker> {
  var flag = 0;
  // void onID(Key id) {
  //   print('id=$id');
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffdff9fb),
                Color(0xFFc8d6e5),
                Color(0xFFc8d6e5),
                Color(0xffdff9fb),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Pick your slot',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.black87,
                              offset: Offset(0, 1),
                            ),
                          ],
                          color: flag == 1 ? Colors.blue : Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        onTap: () {
                          // datafile.mapp = 1;
                          // this.onID();
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.black87,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(20)),
                    height: 150,
                    width: 150,
                    child: GestureDetector(
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.black87,
                              offset: Offset(0, 1),
                            ),
                          ],
                          color: flag == 1 ? Colors.blue : Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      height: 150,
                      width: 150,
                      child: GestureDetector(
                        onTap: () {},
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.black87,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.circular(20)),
                    height: 150,
                    width: 150,
                    child: GestureDetector(
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width / 2,
                        child: FirstTimeField()),
                    Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width / 2,
                        child: LastTimeField()),
                  ],
                ),
              ),
              SizedBox(height: 110),
              MaterialButton(
                height: 50,
                minWidth: 200,
                color: Colors.blueAccent.withOpacity(0.8),
                onPressed: () {},
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstTimeField extends StatelessWidget {
  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Starting Time ',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      DateTimeField(
        format: format,
        textAlign: TextAlign.center,
        onShowPicker: (context, currentValue) async {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          return DateTimeField.convert(time);
        },
      ),
    ]);
  }
}

class LastTimeField extends StatelessWidget {
  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        'Ending Time ',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      DateTimeField(
        format: format,
        textAlign: TextAlign.center,
        onShowPicker: (context, currentValue) async {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          return DateTimeField.convert(time);
        },
      ),
    ]);
  }
}
