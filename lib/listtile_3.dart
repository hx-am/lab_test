// Create ListTile Tabpage4 as statefulWidget class

import 'package:flutter/material.dart';

class ListTile3 extends StatefulWidget {
  const ListTile3({Key? key}) : super(key: key);

  @override
  _ListTile3State createState() => _ListTile3State();
}

class _ListTile3State extends State<ListTile3> {
  // define two TextEditingController widgets
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  // string variable to hold the result
  var result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar - centerTitle, title, backgroundColor
      appBar: AppBar(
        title: const Text("Arithmetic Operations"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: arithmeticOperation(),
    );
  }

  // arithmetic operation widget

  Widget arithmeticOperation() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //1st TextField widget

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('1st Number')),
            controller: myController,
          ),
        ),

        const SizedBox(
          height: 10,
        ),

        //2nd TextField widget
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text('2nd Number')),
            controller: myController2,
          ),
        ),

        // Elevated button arrangement in row form

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //1st elevated button - add

            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                setState(() {
                  result = int.parse(myController.text) +
                      int.parse(myController2.text);
                });
              },
              label: const Text(""),
            ),

            const SizedBox(
              width: 10,
            ),

            //2nd elevated button - substract

            ElevatedButton.icon(
              icon: const Icon(Icons.remove),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                setState(() {
                  result = (int.parse(myController.text) -
                      int.parse(myController2.text));
                });
              },
              label: const Text(""),
            ),

            const SizedBox(
              width: 10,
            ),

            //3rd elevated button - multiply

            ElevatedButton.icon(
              icon: const Icon(Icons.close),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                setState(() {
                  result = (int.parse(myController.text) *
                      int.parse(myController2.text));
                });
              },
              label: const Text(""),
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        // Text widgets to display the label and arithmethic operation

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //1st Text widget - "Result" label
            const Text(
              "Result: ",
              style: TextStyle(fontSize: 40),
            ),
            //2md Text widget - result variable
            Text(
              result.toString(),
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ],
    );
  }
}
