import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class UniteOzetleri extends StatelessWidget {
  const UniteOzetleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OzetPage(),
    );
  }
}

class OzetPage extends StatelessWidget {
  const OzetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFBF6F0),
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
          backgroundColor: Color(0xff5AA469),
          title: const Text('Ünite Özetleri'),
          bottom: const TabBar(
            labelColor: Color(0xffFFEFEF),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person),
                text: '9.Sınıf',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: '10.Sınıf',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: '11.Sınıf',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: '12.Sınıf',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Siniff(),
            ),
            Center(
              child: Siniff(),
            ),
            Center(
              child: Siniff(),
            ),
            Center(
              child: Siniff(),
            ),
          ],
        ),
      ),
    );
  }
}

class Siniff extends StatelessWidget {
  const Siniff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Image.asset(
                'assets/images/ozet.png',
                width: 250,
                height: 200,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          height: 1,
          color: Color(0xff59886B),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text('Mamematik'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Fizik'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Kimya'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Biyoloji'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text('Edebiyat'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Tarih'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Coğrafya'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffBEDBBB),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Felsefe'),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
