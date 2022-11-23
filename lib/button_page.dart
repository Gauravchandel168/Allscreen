import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            ElevatedButton( child:Text("1stscreen"),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: (){
              Navigator.pushNamed(context, MyRoutes.homeRoute);

              }, ),
            SizedBox(height: 10,),

            ElevatedButton( child:Text("2stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: (){
              Navigator.pushNamed(context,MyRoutes.secondRoute );

              },),
            SizedBox(height: 10,),
            ElevatedButton(child:Text("3stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
            onPressed: (){
              Navigator.pushNamed(context,MyRoutes.thirdRoute );

            },),
            SizedBox(height: 10,),
            ElevatedButton(child:Text("4stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.forthRoute);
              },),

    SizedBox(height: 10,),
    ElevatedButton(child:Text("5stscreen"),
    style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
    onPressed: (){
    Navigator.pushNamed(context,MyRoutes.fifthRoute );


    }, ),

            SizedBox(height: 10,),
            ElevatedButton(child:Text("6stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: (){
                Navigator.pushNamed(context,MyRoutes.sixthRoute );


              }, ),
          ],
        ),
      ),



    );
  }
}
