import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soruapp/buttons.dart';
import 'package:soruapp/menu_icerikler/takvim.dart';

import 'auth/main_page.dart';
//import 'package:soru_cozme_uygulamasi/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AnaSayfa());
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (BuildContext context) => AnaSayfa(),
        '/takvim': (BuildContext context) => TakvimSayfasi(),
      },
      home: Scaffold(
        backgroundColor: Color(0xffEFEAD8),
        appBar: AppBar(
          backgroundColor: Color(0xffA64B2A),
          title: Text('SINAV REHBERİN'),
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[300],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff53BF9D),
                ),
                child: Center(
                  child: Text(
                    'MENÜ',
                    style: TextStyle(
                      color: Color(0xffEFEAD8),
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: AnaButton(),
                title: Text('AnaSayfa'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: HakkindaButton(),
                title: Text('Hakkımızda'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: IletisimButton(),
                title: Text('İletişim'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: SoruButton(),
                title: Text('S.S.S'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: AyarButton(),
                title: Text('Ayarlar'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: YorumButton(),
                title: Text('Yorumlarınız'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: TemaButton(),
                title: Text('Tema Değiştir'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        body: GirisEkrani(),
      ),
    );
  }
}

class GirisEkrani extends StatelessWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              //width: double.infinity,
              // height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/logo3.gif',
                    width: 250,
                    height: 250,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sınav Rehberin her türlü'
                      ' sınavda yanında!',
                      // overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontFamily: 'Courgette',
                        fontSize: 18.0,
                        color: Color(
                          0xff406882,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            GestureDetector(
              onHorizontalDragStart: (DragStartDetails details) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffA64B2A),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Başlamak İçin kaydır --->',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TemaDegistir extends StatefulWidget {
  const TemaDegistir({Key? key}) : super(key: key);

  @override
  State<TemaDegistir> createState() => _TemaDegistirState();
}

class _TemaDegistirState extends State<TemaDegistir> {
  Color _color = Color(0xffEFEAD8);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      height: 200.0,
      width: 200.0,
      child: GestureDetector(
        onDoubleTap: () {
          setState(() {
            _color == Color(0xffEFEAD8)
                ? _color = Color(
                    0xffA64B2A,
                  )
                : _color = Color(0xffEFEAD8);
          });
        },
      ),
    );
  }
}
