import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget{
  @override
  _settingsPageState createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff0f1b23),
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color(0xff1c2c35),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                      CircleAvatar(radius: 30,backgroundImage: AssetImage("asset/me.jpg"),),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Ibrahim Janbli",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),
                        ),
                        Text(
                            "Ex nihilo nihil fit 💙💜",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.qr_code,color: Color(0xff00aa80),size: 26,)
                  ],
                ),
                Divider(thickness: 0.5,color: Colors.grey,),
                SizedBox(height: 20,),
                addSetting("Account","Privacy, security, change\nnumber",Icons.vpn_key_rounded),
                addSetting("Chats","Theme, wallpapers, chat\nhistory",Icons.chat),
                addSetting("Notifications","Message, group & call tones",Icons.notifications),
                addSetting("Storage and data","Network usage,\nauto-download",Icons.downloading_sharp),
                addSetting("App language","English (phone's language)",Icons.language),
                addSetting("Help","Help center, contact us, privacy\npolicy",Icons.help_outline),
                Row(
                  children: [
                    Icon(Icons.people,color: Colors.white70,size: 25,),
                    SizedBox(width: 10,),
                    Text(
                        "Invite a friend",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
                SizedBox(height: 120,),
                Column(
                  children: [
                    Text(
                        "From",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      ),
                    ),
                    Text(
                        "Meta",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Column addSetting(String name,String description,IconData myicon){
    return Column(
      children: [
    Row(
    children: [
    Icon(myicon,color: Colors.white70,size: 25,),
    SizedBox(width: 10,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    name,
    style: TextStyle(
    color: Colors.white,
    fontSize: 16
    ),
    ),
    Text(
    description,
    style: TextStyle(
    color: Colors.grey,
    fontSize: 14
    ),
    )
    ],
    ),
    ],
    ),
        SizedBox(height: 30,),
      ],
    );
  }
}