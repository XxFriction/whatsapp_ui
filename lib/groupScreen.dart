import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class groupPage extends StatefulWidget{
  @override
  _groupPageState createState() => _groupPageState();
}


class _groupPageState extends State<groupPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff0f1b23),
      appBar: AppBar(
        backgroundColor: Color(0xff1c2c35),
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage("https://pps.whatsapp.net/v/t61.24694-24/162774911_812274343154376_1655807319149640866_n.jpg?ccb=11-4&oh=01_AVzG0FOh2ZF6Qf0MrJUiv2m9E-nbhkazXj-BJF-z97McJg&oe=634A08BE"),
                )
              )
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Flutter & Dart#6",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Text(
                    "...ست زهراء, ست شهد (MK Nets)",
                  style: TextStyle(
                      fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: 10,),
          Icon(Icons.call),
          SizedBox(width: 10,),
          Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 770,
              child: Center (
                child:  Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Thank You !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "  Follow",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                    ),
                    Text(
                      "  @mk.nets",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30
                      ),
                    ),
                  ],
                )
              ),
            ),
            Positioned(
                bottom: -10,
                left: -10,
                child:
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 330,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xff2a3942),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text(
                                "Message",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.pending,color: Colors.grey,),
                            SizedBox(width: 10,),
                            Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                          ],
                        ),
                      )
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff00af84),
                      ),
                      child: Center(
                        child: Icon(Icons.mic,color: Colors.white,),
                      )
                    )
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}