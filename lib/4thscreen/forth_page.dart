import 'package:flutter/material.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Icon(
                      Icons.lock_sharp,
                      color: Colors.blue,
                      size: 120,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      "We just need your registered email address"
                      " to send You Passwort reset."),
                  SizedBox(
                    height: 48,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail_outline_outlined),
                      hintText: "E-mail",
                      filled: true,
                      fillColor: Colors.black26,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                      height: 40,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
                      },
                      child: Text("Send Mail"),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(500))),
                    ),
                  ),
                  Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    //
                    // mainAxisSize: MainAxisSize.min,


                    children: [
                      Text("Noch Kein Acccount?"),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        "Hier registratrieren",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
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

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: AlertDialog(
          title: Text("Accept?"),
          content: Text("Do You accept?"),

          actions: [TextButton(onPressed: () {Navigator.pop(context);},
              child: Text("No")),

            TextButton(onPressed: () {Navigator.pop(context);},
              child: Text("yes"))],
        ),
      ),
    );
  }
}
