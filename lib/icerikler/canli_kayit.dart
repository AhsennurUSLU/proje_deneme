import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class CanliDersKayitlari extends StatelessWidget {
  const CanliDersKayitlari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CanliKayit(),
    );
  }
}

class CanliKayit extends StatelessWidget {
  const CanliKayit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: Color(0xff222831),
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
          title: const Text('Canlı Ders Kayıtları'),
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
              child: Siniflar(),
            ),
            Center(
              child: Siniflar(),
            ),
            Center(
              child: Siniflar(),
            ),
            Center(
              child: Siniflar(),
            ),
          ],
        ),
      ),
    );
  }
}

class _MakaleAciklama extends StatelessWidget {
  const _MakaleAciklama({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                author,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$publishDate - $readDuration',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  const CustomListItemTwo({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _MakaleAciklama(
                  title: title,
                  subtitle: subtitle,
                  author: author,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Siniflar extends StatelessWidget {
  const Siniflar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: <Widget>[
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Biyoloji',
          subtitle: 'Fotosentez-Kemosentez-Solunum',
          author: 'Aycan Almacı',
          publishDate: '23 Mayıs',
          readDuration: '30 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Matematik',
          subtitle: 'Limit-Türev-İntegral',
          author: 'Engin Eser',
          publishDate: '24 Mayıs',
          readDuration: '60 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Fizik',
          subtitle: 'Atışlar',
          author: 'Atınç Ateş',
          publishDate: '18 Mayıs',
          readDuration: '25 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Edebiyat',
          subtitle: 'Tanzimat Dönemi Türk Edebiyatı',
          author: 'Selda Çelik',
          publishDate: '24 Mayıs',
          readDuration: '35 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Kimya',
          subtitle: 'Organik Kimya',
          author: 'Ayşegül Türker',
          publishDate: '19 Mayıs',
          readDuration: '30 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Coğrafya',
          subtitle: 'İklim Bilgisi',
          author: 'Aykut Çelik',
          publishDate: '11 Mayıs',
          readDuration: '40 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Tarih',
          subtitle: 'Türkiye Tarihi',
          author: 'Taner Tanrısever',
          publishDate: '13 Mayıs',
          readDuration: '24 Dakika',
        ),
        CustomListItemTwo(
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFFD369), shape: BoxShape.rectangle),
          ),
          title: 'Felsefe',
          subtitle: 'Epistemoloji',
          author: 'Gülşah Şimşek',
          publishDate: '16 Mayıs',
          readDuration: '15 Dakika',
        ),
      ],
    );
  }
}
