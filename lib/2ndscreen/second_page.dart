import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.white60,
              leading: Icon(
                color: Colors.grey,
                Icons.arrow_back_ios,
              ),
              title: Text(
                "Kontakt",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nestle_Apotheke Hofen",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text("offnungszeiten :"),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          flex: 3,
                          child:
                              Column(
                                  mainAxisSize: MainAxisSize.min, children: [
                            const Text(
                              "Montag-Freitag",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              "08:30-13:00und",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              "14:00-18:00unr",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ]),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Samstag:",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "08:30-13:00unr",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 19,
                        )
                      ],
                    ),
                    Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                         color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),


                      padding: EdgeInsets.all(19.0),
                      margin: EdgeInsets.all(19.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("+9876543210"),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      padding: EdgeInsets.all(19.0),
                      margin: EdgeInsets.all(19.0),
                      child: Row(children: [
                        Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text("hofen@nestle-apotheke.de"),
                        SizedBox(
                          height: 15,
                        ),
                      ]),
                    ),
                    Container(

                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),

                      padding: EdgeInsets.all(19.0),
                      margin: EdgeInsets.all(19.0),
                      child: Row(children: [
                        const Icon(
                          Icons.file_copy,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("https://nestle-apotheke.de"),
                        const SizedBox(
                          height: 15,
                        ),
                      ]),
                    ),
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      padding: EdgeInsets.all(19.0),
                      margin: EdgeInsets.all(19.0),

                      child: Row(children: [
                        const Icon(
                          Icons.map,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text("friendrichshafen,Deutschland"),
                        const SizedBox(
                          height: 14,
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
