import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final gridItems=[HomeGridData(title: "Chat",icon: Icons.chat),
    HomeGridData(title: "Home",icon: Icons.home),
    HomeGridData(title: "Camera",icon: Icons.camera),
    HomeGridData(title: "file",icon: Icons.file_copy),
  ];


  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final imageUrl="https://www.google.com/search?q=flutter+logo&sxsrf=ALiCzsYraZkUYhQhXlVICq57ZqNydWTCWA:1668594431850&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj7oonTvrL7AhXlSmwGHVHfA2EQ_AUoAXoECAIQAw&biw=1366&bih=667&dpr=1#imgrc=dNPZeSVZSiHD0M";
    return Material(

      color: Colors.blue,

      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Image.network(imageUrl,
              width: 59,
            height: 34,),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,),
                Spacer(),

                Text( "Angelina",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                ),
                SizedBox(
                  width: 16,
                ),


                  ],

            ),
             SizedBox(
              height: 16,
            ),

            Expanded(child:Container(
              decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),

              child: GridView.builder(
                padding: EdgeInsets.only(top: 28, left: 16, right: 16),
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  return _gridWidget(gridItems[index]);
                },
                itemCount: gridItems.length,
              ),

            )),



          ]
        ),
      ),

    );
  }
}

Widget _gridWidget(HomeGridData homeGridData){
  return Card(
    elevation: 5,
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(homeGridData.icon),
          const SizedBox(
            height: 8,
          ),
          Text(homeGridData.title)
        ],
      ),
    ),
  );

}

class HomeGridData{
  String title;
  IconData icon;
  HomeGridData({ required this.title,required this.icon});

}


