import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),

      body: Stack(
        children: [
          Positioned(
            top:10,
            left: 10,

            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                  // ListTile(
                  //   title: Text("Name"),
                  //   subtitle: Text("Status"),
                  //   trailing: Icon(Icons.qr_code, color: Colors.teal,),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
