import 'package:flutter/material.dart';

import '../../router/app_router.dart';

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
              Navigator.pushNamed(context, AppRouter.dashboard);

              }, ),
            SizedBox(height: 10,),

            ElevatedButton( child:Text("2stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: (){
              Navigator.pushNamed(context,AppRouter.secondRoute );

              },),
            SizedBox(height: 10,),
            ElevatedButton(child:Text("3stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
            onPressed: (){
              Navigator.pushNamed(context,AppRouter.thirdRoute );

            },),
            SizedBox(height: 10,),
            ElevatedButton(child:Text("4stscreen"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.forthRoute);
              },),

    SizedBox(height: 10,),
    ElevatedButton(child:Text("5stscreen"),
    style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),),
    onPressed: (){
    Navigator.pushNamed(context,AppRouter.fifthRoute );


    }, ),
          ],
        ),
      ),



    );
  }
}
