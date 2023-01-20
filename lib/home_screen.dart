
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/linked_devices.dart';
import 'package:whatsapp_ui/screen/new_braodcast.dart';
import 'package:whatsapp_ui/screen/new_group.dart';
import 'package:whatsapp_ui/screen/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs:  [
              Icon(Icons.camera_alt),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
          actions:[
            const Icon(Icons.search),
            //const SizedBox(width:5),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context,) =>[
                PopupMenuItem(
                  value: 1,
                  child:Text("New Group")),

                PopupMenuItem(
                  value: 2,
                  child:Text("New Broadcast"),
                ),
                PopupMenuItem(
                  value: 3,
                  child:Text("Linked Devices"),
                ),
                PopupMenuItem(
                  value: 4,
                  child:Text("Starred messages"),
                ),
                PopupMenuItem(
                  value: 5,
                  child:Text("Settings"),
                ),


              ],
              onSelected: (int menu){
                if(menu == 1){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> NewGroup()));

                }
                else if(menu == 2){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> NewBroadcast()));

                } else if(menu == 3){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> LinkedDevices()));

                }else if(menu == 5){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Settings()));

                }
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [

            const Text("Camera"),

            //Chat List
            ListView.builder(
              itemCount: 15,

                itemBuilder: (context,index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/12169270/pexels-photo-12169270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: Text("John"),
                    subtitle: Text("Where are you?"),
                    trailing: Text("6:30 pm"),
                  );

                }),
            //Status List
            ListView.builder(
                itemCount: 15,

                itemBuilder: (context,index){
                  if(index==0){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Updates"),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.teal,
                                      width: 3
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://images.pexels.com/photos/12169270/pexels-photo-12169270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              ),
                            ),
                            title: Text("John"),
                            subtitle: Text("6:30 pm"),
                          ),
                        ],
                      ),
                    );
                  }
                  else{
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.teal,
                                width: 3
                            )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.pexels.com/photos/12169270/pexels-photo-12169270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                      ),
                      title: Text("John"),
                      subtitle: Text("6:30 pm"),
                    );
                  }


                }),

            //Call List
            ListView.builder(
                itemCount: 15,

                itemBuilder: (context,index){
                  return  ListTile(
                    leading: const  CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/12169270/pexels-photo-12169270.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    title: const Text("John"),
                    subtitle: Text(index%3==0 ? "Audio call at 6:30 pm" : " Video call at 2:20 pm"),
                    trailing: Icon(index%3==0 ?Icons.phone : Icons.video_call_outlined),
                  );

                }),

          ],
        ),
      ),
    );
  }
}
