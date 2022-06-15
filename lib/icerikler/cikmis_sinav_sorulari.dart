import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class CikmisSorular extends StatelessWidget {
  const CikmisSorular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffE8E8E8),
        appBar: AppBar(
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
          backgroundColor: Color(0xff495464),
          title: Text('ÖSYM Çıkmış Sorular'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("2021 Tyt "),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2021 Ayt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2020 Tyt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2020 Ayt "),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2019 Ayt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2019 Tyt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2018 Ayt "),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2018 Tyt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2017 Tyt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2017 Ayt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2016 Tyt"),
              trailing: Icon(Icons.bookmark_border),
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Color(0xffF9813A),
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              title: Text("2016 Ayt"),
              trailing: Icon(Icons.bookmark_border),
            ),
          ],
        ),
      ),
    );
  }
}
