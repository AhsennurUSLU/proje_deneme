import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class Hakkimizda extends StatelessWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color(0xff019267),
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
          title: Text('Uygulama Hakkında'),
        ),
        body: SafeArea(
          child: Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/okul.png',
                        width: 300,
                        height: 400,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Color(0xff019267),
                        padding: EdgeInsets.all(10.0),
                        width: 250,
                        height: 100,
                        child: Text(
                          'Bu uygulama Selçuk Üniversitesi Teknoloji Fakültesi '
                          'Bilgisayar '
                          'mühendisliğinde eğitim görmekte olan '
                          '203301063 numaralı Ahsennur Uslu tarafından yapılmıştır.',
                          overflow: TextOverflow.clip,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
