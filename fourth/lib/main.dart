import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTh(),
    );
  }
}

class MyTh extends StatelessWidget {
  const MyTh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.indigoAccent.shade400,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),

            //  color: Colors.indigoAccent.shade400,
            height: 150,
            child: Row(
              //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 150,
                  width: 20,
                ),
                CircleAvatar(
                  foregroundColor: Colors.indigoAccent.shade400,
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2021%2F09%2F16%2Fnick-jonas1.jpg&q=60'),
                ),
                SizedBox(
                  height: 150,
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Johnas',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'assets/images/image.png',
                  height: 20,
                  width: 25,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 606,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'SELECT CURRENCY',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),

                //Column(
                /*  Container(
            height: 400,
            color: Colors.white,
            child: Column(
              children: [*/
                //    Text('SELECT CURRENCY'),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: 60,
                  margin: EdgeInsets.fromLTRB(15, 20, 10, 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.britannica.com/73/4473-050-0D875725/Grand-Union-Flag-January-1-1776.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   United States',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '   USD',
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),

                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  height: 60,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.britannica.com/97/1597-004-05816F4E/Flag-India.jpg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   India',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('   INR'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  height: 60,
                  //   margin: EdgeInsets.all(6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1200px-Flag_of_the_United_Kingdom.svg.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   United Kingdom',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '   GBP',
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  height: 60,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '   Germany',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('   EURO'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 250,
                  child: Text('New Payment',
                      style: TextStyle(color: Colors.white)),
                  margin: EdgeInsets.fromLTRB(40, 90, 25, 14),
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
