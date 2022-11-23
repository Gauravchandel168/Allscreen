import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: Icon(color: Colors.black, Icons.arrow_back_ios),
            title: Text(
              "Chat",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name",
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
                      prefixIcon: Icon(Icons.mail_outline_outlined),
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
                      prefixIcon: Icon(Icons.text_snippet_rounded),
                      hintText: "Text",
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
                      prefixIcon: Icon(Icons.image_rounded),
                      hintText: "Upload a photo",
                      filled: true,
                      fillColor: Colors.grey,

                      border: OutlineInputBorder( 

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,

                  ),
                  ElevatedButton(
                    child: Text("Senden"),
                    style: TextButton.styleFrom(
                        minimumSize: Size(310, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
