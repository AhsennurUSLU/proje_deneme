import 'package:flutter/material.dart';
import 'package:soruapp/dersler/ders_matematik.dart';
import '../dersler/ders_biyoloji.dart';
import '../dersler/ders_cografya.dart';
import '../dersler/ders_edebiyat.dart';
import '../dersler/ders_felsefe.dart';
import '../dersler/ders_fizik.dart';
import '../dersler/ders_kimya.dart';
import '../dersler/ders_tarih.dart';
import 'package:soruapp/pages/home_page.dart';

class DersKitaplari extends StatelessWidget {
  const DersKitaplari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DersPage(),
    );
  }
}

class DersPage extends StatelessWidget {
  const DersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFFEFEF),
        appBar: AppBar(
          backgroundColor: Color(0xff655D8A),
          title: const Text('Ders Kitapları'),
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
              child: DokuzuncuSinif(),
            ),
            Center(
              child: OnuncuSinif(),
            ),
            Center(
              child: OnbirinciSinif(),
            ),
            Center(
              child: OnikinciSinif(),
            ),
          ],
        ),
      ),
    );
  }
}

// sınıflar

class DokuzuncuSinif extends StatelessWidget {
  const DokuzuncuSinif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "MATEMATİK",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MatematikDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "FİZİK",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FizikDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "KİMYA",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KimyaDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "BİYOLOJİ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BiyolojiDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "EDEBİYAT",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EdebiyatDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "TARİH",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TarihDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "COĞRAFYA",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CografyaDers()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffEDD2F3),
              ),
              child: Container(
                width: double.infinity,
                //height: 50,
                padding: EdgeInsets.all(8),
                color: Color(0xffEDD2F3),
                child: Center(
                  child: const Text(
                    "FELSEFE",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2C394B)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FelsefeDers()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OnuncuSinif extends StatelessWidget {
  const OnuncuSinif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                "MATEMATİK",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FİZİK',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'KİMYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'BİYOLOJİ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'EDEBİYAT',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'TARİH',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'COĞRAFYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FELSEFE',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class OnbirinciSinif extends StatelessWidget {
  const OnbirinciSinif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                "MATEMATİK",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FİZİK',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'KİMYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'BİYOLOJİ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'EDEBİYAT',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'TARİH',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'COĞRAFYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FELSEFE',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class OnikinciSinif extends StatelessWidget {
  const OnikinciSinif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                "MATEMATİK",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FİZİK',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'KİMYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'BİYOLOJİ',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'EDEBİYAT',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'TARİH',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'COĞRAFYA',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
            Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.all(8),
              color: Color(0xffEDD2F3),
              child: Center(
                  child: const Text(
                'FELSEFE',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2C394B)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
