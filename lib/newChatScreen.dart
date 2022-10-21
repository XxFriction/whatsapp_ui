import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newChatPage extends StatefulWidget{
  @override
  _newChatPageState createState() => _newChatPageState();

}

class _newChatPageState extends State<newChatPage>{
  @override
  Widget build(BuildContext){
    return Scaffold(
      backgroundColor: Color(0xff0f1b23),
      appBar: AppBar(
        backgroundColor: Color(0xff1c2c35),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Select contact",
              style: TextStyle(
                fontSize: 16
              ),
            ),
            Text(
                "68 contacts",
              style: TextStyle(
                  fontSize: 12
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.more_vert),
        ],
      ),


      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addNew("New group", Icons.people),
                addNew("New contact", Icons.people),
                addNew("New community", Icons.people),
                Text(
                  "Contacts on WatsApp",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                  ),
                ),
                addUser("Noah (JWL)","https://pps.whatsapp.net/v/t61.24694-24/172283716_610525473452319_2573837870603364490_n.jpg?ccb=11-4&oh=01_AVzPqAggeucx7MrPKX1VMsjkIC-5ppJvmjIVSzu-aMhFMQ&oe=6348139B"," "),
                addUser("آشتي (جامعة)","https://pps.whatsapp.net/v/t61.24694-24/70477448_2618862478344442_94899311198963356_n.jpg?ccb=11-4&oh=01_AVz-wP7fha8t13d4ubFp78ajhrrIUc2gab3lky6BT-3XGA&oe=634820F2","لا تخافوا ان الله معنا"),
                addUser("أحمد (جامعة)","https://pps.whatsapp.net/v/t61.24694-24/291126862_348041964151695_6429720138791305074_n.jpg?ccb=11-4&oh=01_AVwqw6YFZlBR2N8BfQAaUfhTCsQRnwvclGu8Hiou8V5b3g&oe=6348550F","👑3/8"),
                addUser("أحمد مراد(جامعة)","https://pps.whatsapp.net/v/t61.24694-24/306137497_197144176043723_5937391861677758083_n.jpg?ccb=11-4&oh=01_AVyr2WTJ-c3z7UP38nrOUMgdWuHCtAcfv_2VgFzJ1DKPBw&oe=6348976F","Unreachable"),
                addUser("أبي","https://pps.whatsapp.net/v/t61.24694-24/65020212_2407928549450861_1594719982615265280_n.jpg?ccb=11-4&oh=01_AVwPuUW6gQ6BS-EgVY4bYgsMpTOtzKtdsljkS-g0w25IBA&oe=634BDD83","Hey there! I am using.."),
                addUser("أخي حسين","https://pps.whatsapp.net/v/t61.24694-24/239747955_952223225705596_695146635859531245_n.jpg?ccb=11-4&oh=01_AVzTN-5NTps53x0j61itglMqSDyXMUq8ht6-97SW7zPaSA&oe=63484A72","تبقى الموسيقى هي التعويض.."),
                addUser("أمي","https://pps.whatsapp.net/v/t61.24694-24/134733310_420573809211579_6058872202126645534_n.jpg?ccb=11-4&oh=01_AVyLyPj54oyYqHb4ZWo74hVylqMoybgN23Y8IrJ6qkBEyQ&oe=634883B1","Hey there! I am using.."),
                addUser("أيمن صبري","https://pps.whatsapp.net/v/t61.24694-24/294229049_413230123934684_980820486247041270_n.jpg?ccb=11-4&oh=01_AVzUR8XUYg00Xy2kBulklIQWLdAzVAiT3GULtqWzHVJQXQ&oe=634B705B","Developer and Progr..."),
                addUser("أستاذ أنس","https://pps.whatsapp.net/v/t61.24694-24/301446772_2272443379589170_6837241916097425905_n.jpg?ccb=11-4&oh=01_AVw5NGEx_LVNY7ti4NveT7ryq7-mr8_JTyr-tTb3gBsmnA&oe=634A32DE","Hey there! I am using.."),
                addUser("الأستاذ شيار","https://pps.whatsapp.net/v/t61.24694-24/260828971_647710993189501_6330493461639352530_n.jpg?ccb=11-4&oh=01_AVx21uaSYE0KRuxTMSDqtOr_INxjvGtkyfYamz4iZ6JwOw&oe=634B4510","To know oneself, one..."),
                addUser("الأستاذ سرور","https://pps.whatsapp.net/v/t61.24694-24/294908768_3201390483406729_1901140003769467133_n.jpg?ccb=11-4&oh=01_AVyGVydXYSBAjhvIMwnwPPVYZWdJWNH5L3_FYKto-aGwbg&oe=6349087D"," "),
                addUser("الأستاذ يوسف (التقنيات الحديثة)","https://pps.whatsapp.net/v/t61.24694-24/208435513_769651714439960_6369122297068152383_n.jpg?ccb=11-4&oh=01_AVyAhm5ocZNvZtm2IOcNkF4AImRTdu1BOqvytR2wGbvgZg&oe=6347BC5B","مرحبا! أنا استعمل واتساب."),
                addUser("برزان سيمو","https://pps.whatsapp.net/v/t61.24694-24/161779709_1087794571785393_3548677083616165816_n.jpg?ccb=11-4&oh=01_AVzLz22T_USQDdmE7emRbz1-oFanErINNVIECMDyvXTwwA&oe=634AD7C3","But nobody knows th..."),
                addUser("الأستاذ عبد الرحمن (ايلتس)","https://pps.whatsapp.net/v/t61.24694-24/169434068_290056346261767_4850439153587639421_n.jpg?ccb=11-4&oh=01_AVyTvNRjlz8tHCwyimvNCIYX_6XvJpMtMAlHkq7ocbUyng&oe=6349EEDC","في خدمتك عشان تحقق طموح..."),
              ],
            ),
          )
        ],
      )
    );
  }
  Column addNew(String name, IconData myicon){
    return Column(
      children: [
    Row(
    children: [
    Container(
    width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xff00af84),
      ),
      child: Center(
        child: Icon(myicon,color: Colors.white,),
      ),
    ),
    SizedBox(width: 10,),
    Text(
    name,
    style: TextStyle(
    color: Colors.white,
    fontSize: 16
    ),
    ),
    ],
    ),
        SizedBox(height: 20,),
      ],
    );
  }

  Column addUser(String name, String img,String stat){
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )
              ),
            ),
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
                  stat,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}