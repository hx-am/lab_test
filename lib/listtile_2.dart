// Create class ListTile2 as statefulWidget  - a widget class
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListTile2 extends StatefulWidget {
  const ListTile2({Key? key}) : super(key: key);

  @override
  _ListTile2State createState() => _ListTile2State();
}

// _Tabpage3State - a state class
class _ListTile2State extends State<ListTile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBAr
      appBar: AppBar(
        title: const Text('Image View'),
        centerTitle: true,
        //background color
        backgroundColor: Colors.blueAccent,
      ),
      body: myColumn(),
    );
  }

  // column widget

  Widget myColumn() {
    return Column(
      // Center the main axis alignment
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      // consist of two containers as childrend

      children: [
        // 1st container - with Gesture detector
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text("This is Snackbar"),
              backgroundColor: Colors.black,
              behavior: SnackBarBehavior.floating,
              padding: const EdgeInsets.all(10),
              action: SnackBarAction(
                label: 'Dismiss',
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ));
          },

          // Container contains the NetworkImage
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/2/2f/Logo_Jubli_Emas_50_Tahun_UPM.png'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(4),
              border: const Border(
                top: BorderSide(width: 1.0, color: Colors.black),
                left: BorderSide(width: 1.0, color: Colors.black),
                right: BorderSide(width: 1.0, color: Colors.black),
                bottom: BorderSide(width: 1.0, color: Colors.black),
              ),
            ),
          ),
        ),

        const SizedBox(
          height: 30,
        ),

        // 2nd container - with Gesture Detector
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(
                msg: "#WeLoveUPM",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.black54,
                textColor: Colors.white,
                fontSize: 15.0);
          },

          // Container contains the AssetImage
          child: Center(
              child: Container(
            height: 200,
            width: 360,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/upmstudents.jpg'),
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(4),
              border: const Border(
                top: BorderSide(width: 1.0, color: Colors.black),
                left: BorderSide(width: 1.0, color: Colors.black),
                right: BorderSide(width: 1.0, color: Colors.black),
                bottom: BorderSide(width: 1.0, color: Colors.black),
              ),
              color: Colors.black,
            ),
          )),
        ),
      ],
    );
  }
}
