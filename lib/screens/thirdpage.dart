import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class SlotPicker3 extends StatefulWidget {
  static const routeName = '/thirdPage';
  @override
  _SlotPicker3State createState() => _SlotPicker3State();
}

class _SlotPicker3State extends State<SlotPicker3> {
  var flag = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
            Row(
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
          ],
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
      Text('Starting Time '),
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
      Text('Ending Time '),
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
