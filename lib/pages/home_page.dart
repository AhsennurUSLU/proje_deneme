import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soruapp/icerikler/alistirmalar.dart';
import 'package:soruapp/icerikler/calisma_sorulari.dart';
import 'package:soruapp/icerikler/canli_kayit.dart';
import 'package:soruapp/icerikler/ders_kitabi.dart';
import 'package:soruapp/icerikler/konu_video.dart';
import 'package:soruapp/icerikler/unite_ozetleri.dart';
import '../buttons.dart';
import '../icerikler/cikmis_sinav_sorulari.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEAD8),
        appBar: AppBar(
          backgroundColor: Color(0xff025955),
          title: Text(
            'Sınav Rehberin',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                icon: Icon(Icons.exit_to_app))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[300],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // Menü başlık kısmı = circleAvatar + isim + e_mail adres
              DrawerHeader(
                decoration: BoxDecoration(
                    //color: Color(0xff406882),
                    color: Color(0xffA25B5B)),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            //width: 100.0,
                            //height: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/circleAvatarNew.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hoşgeldiniz!',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            user.email!,
                            style: TextStyle(color: Colors.grey[300]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: HomeButton(),
                title: Text('Profilim'),
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
                leading: TakvimButton(),
                title: Text('Takvim'),
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
                leading: NotButton(),
                title: Text('Kelime Bul-Göster'),
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
                leading: GrafikButton(),
                title: Text('Durum Grafiğim'),
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
                leading: EkleButton(),
                title: Text('Not Ekle'),
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
                leading: ArkadasButton(),
                title: Text('Arkadaşlarım'),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                leading: Icon(
                  Icons.arrow_back,
                  color: Color(0xff525E75),
                ),
                title: Text('Çıkış Yap'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
                //trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo3.gif',
                      width: 250,
                      height: 250,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DersKitaplari()));
                                },
                                child: Text('Ders Kitabı',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              UniteOzetleri()));
                                },
                                child: Text('Ünite Özetleri',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              KonuVideolari()));
                                },
                                child: Text('Konu Anlatım Videoları',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CanliDersKayitlari()));
                                },
                                child: Text('Canlı Ders Kayıtları',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Alistirmalar()));
                                },
                                child: Text('Alıştırmalar',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CalismaSorulari()));
                                },
                                child: Text('Çalışma Materyalleri',
                                    style: TextStyle(color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff00917C)),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 308,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CikmisSorular()));
                        },
                        child: Text('Çıkmış Sınav Soruları',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff00917C)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(user.email! + '  Olarak Giriş Yapıldı')],
                ),
              ],
            ),
          ),
        ));
  }
}

/*Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(user.email! + '  Olarak Giriş Yapıldı'),*/

/* MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Color(0xffA64B2A),
              child: Text(
                'Çıkış Yap',
                style: TextStyle(color: Colors.white),
              ),
            )*/
