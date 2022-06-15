import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class Iletisim extends StatelessWidget {
  const Iletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color(0xffDEA057),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                icon: Icon(Icons.forward))
          ],
          title: Text('İletişim Sayfası'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/iletisim.png',
                  width: 250,
                  height: 200,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color(0xffDEA057),
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 80,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'e-mail: ahsennuruslu@gmail.com',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Telefon Numarası: 05075581878',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
