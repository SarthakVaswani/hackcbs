import 'package:flutter/material.dart';

class SlotPicker extends StatefulWidget {
  @override
  _SlotPickerState createState() => _SlotPickerState();
}

class _SlotPickerState extends State<SlotPicker> {
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
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
