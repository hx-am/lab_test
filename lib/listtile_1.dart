import 'package:flutter/material.dart';

// Create class ListTile1 as statelessWidget
class ListTile1 extends StatelessWidget {
  const ListTile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar attribute
      appBar: AppBar(
        title: const Text('AlertDialog'),
        centerTitle: true,
      ),
      //background color
      backgroundColor: Colors.white,
      // Center the elevated button at the screen body
      body: Center(
        child: ElevatedButton(
            onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => _showAlertDialog(context)),
            child: const Text("AlertDialog!")),
      ),
    );
  }

  // Create a method called _showAlertDialog
  _showAlertDialog(BuildContext context) {
    // three components required for the AlertDialog box

    // 1st - set up the textbutton in the alert dialog
    Widget okBTN = TextButton(
      onPressed: () => Navigator.pop(context, 'OK'),
      child: const Text("OK"),
    );

    // 2nd - set up the alert dialog message
    AlertDialog alertDialog = AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/alert.png',
            width: 25,
            height: 25,
          ),
          // Text widget
          const Text('Alert Dialog Box')
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      content: const Text("SKR4307 Lab Test - Semester II 2021/22"),
      actions: [
        // addthe button declared btn widget
        okBTN,
      ],
    );

    // 3rd - show the dialog box
    return alertDialog;
  }
}
