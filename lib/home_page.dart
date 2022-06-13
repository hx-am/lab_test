import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lab_test/listtile_1.dart';
import 'package:lab_test/listtile_2.dart';
import 'package:lab_test/listtile_3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //const MyHomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const Text('Home Screen'),
        ),
        body: customColumn(),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                accountName: Text("Heng Xiang"),
                accountEmail: Text("202717@student.upm.edu.my"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg')),
              ),
              //1st listtile
              ListTile(
                  leading: const Icon(
                    Icons.alarm,
                    color: Colors.red,
                  ),
                  title: const Text('Show Alert'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListTile1()));
                  }),

              //2nd listtile
              ListTile(
                  leading: const Icon(
                    Icons.image,
                    color: Colors.blue,
                  ),
                  title: const Text('Image Layout'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListTile2()));
                  }),
              //3rd listtile
              ListTile(
                  leading: const Icon(
                    Icons.calculate,
                    color: Colors.green,
                  ),
                  title: const Text('Arithmetic'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListTile3()));
                  }),
              const Divider(
                thickness: 2,
              ),

              //4th listtile
              ListTile(
                  leading: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  title: const Text('Close'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}

// The customColumn widget
Widget customColumn() {
  String todayDate = DateFormat.yMd().add_jm().format(DateTime.now());
  String todayDay = DateFormat.EEEE().format(DateTime.now());
  // return the main container - width & height refer to the device screen size
  // ignore: avoid_unnecessary_containers
  return Container(
      // Column form arrangement of text and container children
      child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 4 texts - code, details, date and day
        const Text(
          "SKR4307",
          style: TextStyle(fontSize: 20.0, fontFamily: 'Righteous'),
        ),
        const Text(
          "LabTest - Semester II 2021/2022",
          style: TextStyle(fontSize: 20.0, fontFamily: 'Righteous'),
        ),
        const Text(
          "LabTest - Semester II 2021/2022",
          style: TextStyle(fontSize: 20.0, fontFamily: 'Righteous'),
        ),
        Text(
          todayDate,
          style: const TextStyle(fontSize: 20.0, fontFamily: 'Righteous'),
        ),
        Text(
          todayDay,
          style: const TextStyle(fontSize: 20.0, fontFamily: 'Righteous'),
        ),
        // sized box with height of 10
        const SizedBox(height: 10),
        // Sub container - containing the image
        Container(
          width: 300.0,
          height: 300.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.pngitem.com/pimgs/m/25-256506_azzurri-lp-icons-mobility-flexible-working-transparent-mobile.png"),
                  fit: BoxFit.contain)),
        ),
      ],
    ),
  ));
}
