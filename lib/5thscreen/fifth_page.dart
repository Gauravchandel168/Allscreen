import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            title: Center(
              child: Text(
                "Chats",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          body: ListView(
              children: ListTile.divideTiles(context: context, tiles: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Advisor ",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    subtitle:
                        Text("Nerna "),
                    leading: Container(child: CircleAvatar(backgroundColor:Colors.grey,child: Icon(Icons.person))),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Today"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue,),
                          child: Text("2",style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.normal,),)),
                    ],
                  ),
                )
              ],
            ),
            
            
            
            
            ListTile(
              title: Text(
                "Advisor Diskus",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              subtitle: Text("Nerna anim ipsarn voluptatem Qula Voluptos slit"),
              leading: Container(child: CircleAvatar(backgroundColor:Colors.grey,child: Icon(Icons.person))),
            ),
            ListTile(
              title: Text(
                "Advisor Diskus",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              subtitle: Text("Nerna anim ipsarn voluptatem Qula Voluptos slit"),
              leading: Container(child: CircleAvatar(backgroundColor:Colors.grey,child:Icon(Icons.person))),
            ),
            ListTile(
              title: Text(
                "Advisor Diskus",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),

              subtitle: Text("Nerna anim ipsarn voluptatem Qula Voluptos slit"),
              leading: Container(child: CircleAvatar(backgroundColor:Colors.grey,child:Icon(Icons.person))),
            ),
          ]).toList()),
        ),
      ),
    );
  }
}
