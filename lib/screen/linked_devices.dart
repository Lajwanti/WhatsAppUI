import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked devices"),
      ),

      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Center(child: Text("Image")),
                    SizedBox(height: 10),
                    Center(child: Text("Use WhatsApp on other devices",style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 10),
                    Container(
                      height: 50.0,

                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          child: Container(

                            constraints:
                            BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Link a device",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.lock,size: 15,),
                        SizedBox(width: 5),
                        Text("Your personal messages are "),
                        Text("end-to-end encrypted",style: TextStyle(color: Colors.teal),),
                      ],
                    ),

                    Text("on all your devices.",textAlign: TextAlign.left,),

                  ],

                ),
              )),
          Container(
           height: 250,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("   Use WhatsApp on web, desktop or other \ndevices without keeping your phone online.")),
            Center(child: Text("Leran more",style: TextStyle(color: Colors.blue),),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
