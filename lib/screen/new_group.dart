import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
         // leading: Icon(Icons.arrow_back_outlined),
          title: Text("New group"),
          subtitle: Text("Add participants"),
          trailing: Icon(Icons.search,color: Colors.white,),
        ),
      ),

      body: Stack(
        children: [
          ListView.builder(
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

          Positioned(
            bottom: 0,
            right: 25,
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
                child: Icon(Icons.arrow_forward,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
