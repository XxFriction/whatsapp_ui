import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/SettingsScreen.dart';
import 'package:whatsapp_ui/groupScreen.dart';
import 'package:whatsapp_ui/newCallScreen.dart';
import 'package:whatsapp_ui/newChatScreen.dart';

class mainHomePage extends StatefulWidget{
  @override
  _mainHomePageState createState() => _mainHomePageState();
}

class _mainHomePageState extends State <mainHomePage>{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
        length: 4,
         child: Scaffold(
           backgroundColor: Color(0xff0f1b23),
           appBar: AppBar(
             backgroundColor: Color(0xff1c2c35),
             elevation: 1,
             title: Text("WhatsApp"),
             actions: [
               Icon(Icons.camera_alt_outlined),
               SizedBox(width: 10,),
               Icon(Icons.search),
               SizedBox(width: 10,),
               IconButton(
                 icon: Icon(Icons.more_vert),
                 onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=> settingsPage()));
                 },
               ),

             ],
             bottom: TabBar(
               indicatorColor: Color(0xff00af84),
               tabs: [
                 Tab(child: Icon(Icons.people),),
                 Tab(child: Text("CHATS")),
                 Tab(child: Text("STATUS")),
                 Tab(child: Text("CALLS")),
               ],
             ),
           ),
           body: TabBarView(
             children: [
               Padding(padding: EdgeInsets.only(left: 15,right: 15,),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 350,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/team.png"),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                            " Introducing\ncommunities",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            "Easily organize your related groups\nand send announcements. Now, your\ncommunities, like neighboorhoods or\nSchools, can have their ownc space.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xff00ac81),
                          ),
                          child: Center(
                            child: Text(
                                "START YOUR COMMUNITY",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                 ),
               ),

               Stack(
                     children: [
                       ListView(
                         children: [
                           Column(
                             children: [
                               GestureDetector(
                                 child: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 15),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       CircleAvatar(radius: 26,backgroundImage: AssetImage("asset/mk.jpg"),),
                                       SizedBox(width: 15,),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text(
                                             "Flutter & Dart#6",
                                             style: TextStyle(
                                                 color: Colors.white,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 17
                                             ),
                                           ),
                                           SizedBox(height: 5,),
                                           Text(
                                             "+964 782 232 6626: تمام",
                                             style: TextStyle(
                                                 color: Colors.grey,
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 15
                                             ),
                                           ),
                                         ],
                                       ),
                                       Spacer(),
                                       Column(
                                         children: [
                                           Text(
                                             "22:38",
                                             style: TextStyle(
                                               color: Colors.grey,
                                               fontSize: 14,
                                             ),
                                           ),
                                         ],
                                       )
                                     ],
                                   ),
                                 ),
                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>groupPage()));
                                 },
                               ),
                               addChat("asset/family.jpg","عائلتي","أختي غزالة: 🥰🥰🥰🥰🥰🥰","9/30/22"),
                               addChat("asset/muhammed.jpg","محمد (جامعة)","You reacted 🙏 to: \"الله يوفقك🌹\"","Yesterday"),
                               addChat("asset/shehid.jpg","Shehid (MK Nets)","العفو أستاذ تدلل","Yesterday"),
                               addChat("asset/skills.jpg","ست جوانه (ايلتس)","Reacted 👍 to : \"ok I will do.\"","9/30/22"),
                               addChat("asset/ielts.jpg","الأستاذ عبد الرحمن (ايلتس)","Yoy Reacted ❤ to : \"..إبراهيم يومك جم\"","29/9/22"),
                               addChat("asset/dara.jpg","أخي دارا","😬 شو رأيك لسه ما خلصته ","28/9/22"),
                               addChat("asset/muhammedsimo.jpg","محمد سيمو","تمام نتلاقى بعدين","27/9/22"),
                               addChat("asset/barzan.jpg","برزان سيمو","بالخدمة أخوي","27/9/22"),
                               addChat("asset/anas.jpg","أستاذ أنس","ولا يهمك إبراهيم","27/9/22"),
                               addChat("asset/loran.jpg","لوران","😂😂😂","25/9/22"),
                               addChat("asset/srour.jpg","الأستاذ سرور","تمام","27/7/22"),
                             ],
                           ),
                         ],
                       ),
                       Positioned(
                           bottom: 15,
                           right: 20,
                           child: GestureDetector(
                             child: Container(
                               width: 50,
                               height: 50,
                               decoration: BoxDecoration(
                                 color: Color(0xff00aa80),
                                 borderRadius: BorderRadius.circular(100),
                               ),
                               child: Center(
                                   child: GestureDetector(
                                     onTap: (){
                                       print("clicked");
                                     },
                                     child: Icon(Icons.chat,size: 30,color: Colors.white,),
                                   )
                               ),

                             ),
                             onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (_)=>newChatPage()));
                             },
                           )
                       ),
                     ],
                   ),

               Stack(
                 children: [
                   Padding(padding: EdgeInsets.all(15),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Stack(
                               children: [
                                 CircleAvatar(radius: 35,backgroundImage: NetworkImage("https://pps.whatsapp.net/v/t61.24694-24/232314437_3197662470488497_504469866457170626_n.jpg?ccb=11-4&oh=01_AVxrRTh1r8M8Y6drJL2qsTx3NDIbXtALDbGtOaaVpAvBAg&oe=63479E61"),),
                                 Positioned(
                                     bottom: -2,
                                     left: 44,
                                     child: Container(
                                       height: 30,
                                       width: 30,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(100),
                                           color: Color(0xff0f1b23),
                                           border: Border.all(width: 2,color: Color(0xff0f1b23))
                                       ),
                                       child: Icon(Icons.add_circle_outlined,color: Color(0xff00aa82),size: 26,),

                                     )
                                 ),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   "My status",
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                   ),
                                 ),
                                 Text(
                                   "Tap to add status update",
                                   style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 15
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Text(
                           "Recent updates",
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 15,
                           ),
                         ),
                         addStory("asset/nichirvan.jpg", "نيجيرفان كالو", "Today, 00:17"),
                         SizedBox(height: 6,),
                         Text(
                           "Viewed updates",
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 15,
                           ),
                         ),
                         SizedBox(height: 5,),
                         addStory("asset/loran.jpg","لوران","28 minutes ago"),
                         addStory("asset/hussain.jpg","أخي حسين","Today, 21:08"),
                         addStory("asset/mother.jpg","أمي","Today, 20:11"),
                       ],
                     ),
                   ),
                   Positioned(
                     bottom: 30,
                     right: 15,
                     child: Column(
                       children: [
                         Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(100),
                               color: Color(0xff1e3239),
                             ),
                           child: Icon(Icons.create,color: Colors.white,),
                         ),
                         SizedBox(height: 8,),
                         Container(
                           width: 50,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(100),
                             color: Color(0xff00aa80),
                           ),
                           child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                         ),
                       ],
                     ),
                   )
                 ],
               ),

              Stack(
                children: [
                  Padding(padding: EdgeInsets.all(15),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child:  Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage("asset/dara.jpg"),
                                  )
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "أخي دارا",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.call_made,color: Color(0xff00aa80),size: 20,),
                                    Text(
                                      " 11 minutes ago",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.call,color: Color(0xff00aa80),size: 25,)
                          ],
                        ),
                      )
                  ),
                  Positioned(
                      bottom: 15,
                      right: 20,
                      child: GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff00aa80),
                          ),
                          child: Icon(Icons.add_ic_call_rounded,color: Colors.white,),
                        ),
                        onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>newCallPage()));
                        },
                      )),
                ],
              )
             ],
           )
         ),
    );
  }
  Padding addChat(String img,String name, String msg, String time){
    return Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 26,backgroundImage: AssetImage(img),),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    msg,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Padding addStory(String img,String name, String time){
    return Padding(padding: EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
      child: Row(
        children: [
          CircleAvatar(radius: 25,backgroundImage: AssetImage(img),),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}