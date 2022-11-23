

import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            Align(
              alignment: Alignment.topRight,
              child: Text("Skip"),
            ),
            SizedBox(
              width: 16,
            ),
            Image.asset(
              "assets/image/nestle.png",
              width: 59,
              height: 34,
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Herzlich Willkommen login"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),

                hintText: "E-mail",
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                hintText: "Passwort",
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
           Row(
             mainAxisSize: MainAxisSize.min,
             children: [
               CheckboxListTile(
                 value:false,
                 onChanged: (val){},
                 activeColor:Colors.blue,
                 title:Text("Erinnere mih and Dich")
               ),
               Spacer(),
               
               Text(
                 "Passwort Vergessan",style:TextStyle(color: Colors.blue),),
             ],
           ),
            SizedBox(
              height: 16,
            ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(height: 40.0,),
            child: ElevatedButton(onPressed: ( ){},
                child: Text("Login"),
            
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: 
                  BorderRadius.circular(30)
              )
            ),),
          ),
            SizedBox(
              height: 15,
            ),

            Text("Order Login mit"),

            Row(
              children: [ Image.asset(
                "assets/image/google.png",
                width: 16,
                height: 16,
              ),
                SizedBox(width: 16,),

                Image.asset(
                  "assets/image/facebook.png",
                  width: 16,
                  height:16,
                ),],
            ),

            Row(
              children: [
              Text("Noch Kein Acccount?"),
                SizedBox(width: 9,),
              Text("Hier registratrieren",style: TextStyle(color: Colors.blue),),

            ],)

          ],
        ),
      )),
    );
    
  }
}
