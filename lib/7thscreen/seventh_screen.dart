import 'package:flutter/material.dart';

class SeventhPage extends StatelessWidget {
  const SeventhPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white60,
            title: Text("Register",style: TextStyle(color: Colors.blue,fontSize: 26),),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                prefixIcon:Icon(Icons.person),
                hintText: "First Name",
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                )
            ),),
                SizedBox(height:16),

                TextField(
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.person),
                      hintText: "Last Name",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),),
                SizedBox(height:16),

                TextField(
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.mail_outline),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),),
                SizedBox(height:16),

                TextField(
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.phone),
                      hintText: "Phone ",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      )
                  ),),
                SizedBox(height:16),

                TextField(
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.key_sharp),
                      hintText: " Passwort ",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                SizedBox(height:16),

                TextField(
                  decoration: InputDecoration(
                      prefixIcon:Icon(Icons.person),
                      hintText: "Conform Passwort",
                      filled: true,
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),),
                SizedBox(height:16),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
