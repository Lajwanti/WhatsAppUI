import 'package:flutter/material.dart';

class NewBroadcast extends StatefulWidget {
  const NewBroadcast({Key? key}) : super(key: key);

  @override
  _NewBroadcastState createState() => _NewBroadcastState();
}

class _NewBroadcastState extends State<NewBroadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          // leading: Icon(Icons.arrow_back_outlined),
          title: Text("New Broadcast"),
          subtitle: Text("0 of 100 selected"),
          trailing: Icon(Icons.search,color: Colors.white,),
        ),
      ),

      body: Stack(
        children: [
          Positioned(
            top: 10,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text("Only contacts with +92 334 5959595 in their address\nbook will receive your broadcast messages.",
              textAlign: TextAlign.center,),
            ),
          ),

           Padding(
             padding: const EdgeInsets.only(top: 60),
             child: ListView.builder(
                  itemCount: 15,

                  itemBuilder: (context,index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/12169270/pexels-photo-12169270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                          ),
                          title: Text("John"),
                          subtitle: Text("Hey there, I am using WhatsApp"),
                        ),
                      ],
                    );

                  }),
           ),


          Positioned(
            bottom: 0,
            right: 25,
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
                child: Icon(Icons.done,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
