import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class KonuVideolari extends StatelessWidget {
  const KonuVideolari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoPage(),
    );
  }
}

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFCEEF5),
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
          backgroundColor: Color(0xffBD4B4B),
          title: const Text('Konu Anlatım Videoları'),
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
              child: Sinif(),
            ),
            Center(
              child: Sinif(),
            ),
            Center(
              child: Sinif(),
            ),
            Center(
              child: Sinif(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoAciklama(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _VideoAciklama extends StatelessWidget {
  const _VideoAciklama({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount izlenme',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}

class Sinif extends StatelessWidget {
  const Sinif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <CustomListItem>[
        CustomListItem(
          user: 'Engin ESER',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff334756), shape: BoxShape.rectangle),
          ),
          title: 'Matematik',
        ),
        CustomListItem(
          user: 'Selda ÇELİK',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff5F939A), shape: BoxShape.rectangle),
          ),
          title: 'Edebiyat',
        ),
        CustomListItem(
          user: 'Aycan ALMACİ',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff628395), shape: BoxShape.rectangle),
          ),
          title: 'Biyoloji',
        ),
        CustomListItem(
          user: 'A.Atınç Ateş',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff787A91), shape: BoxShape.rectangle),
          ),
          title: 'Fizik',
        ),
        CustomListItem(
          user: 'Ayşegül TÜRKER',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff334756), shape: BoxShape.rectangle),
          ),
          title: 'Kimya',
        ),
        CustomListItem(
          user: 'Aykut ÇELİK',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff5F939A), shape: BoxShape.rectangle),
          ),
          title: 'Coğrafya',
        ),
        CustomListItem(
          user: 'Taner TANRISEVER',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff628395), shape: BoxShape.rectangle),
          ),
          title: 'Tarih',
        ),
        CustomListItem(
          user: 'Gülşah ŞİMŞEK',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(
                color: Color(0xff787A91), shape: BoxShape.rectangle),
          ),
          title: 'Felsefe',
        ),
      ],
    );
  }
}
