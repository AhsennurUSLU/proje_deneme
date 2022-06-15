import 'package:flutter/material.dart';

class TarihDers extends StatelessWidget {
  const TarihDers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        appBar: AppBar(
          backgroundColor: Color(0xff008E89),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.forward))
          ],
          title: Text('9.Sınıf Tarih Konuları'),
        ),
        body: TarihPage(),
      ),
    );
  }
}

class TarihPage extends StatelessWidget {
  TarihPage({Key? key}) : super(key: key);
  final List<String> entries = <String>[
    '1.Ünite:  Tarih Ve Zaman',
    '2.Ünite:  İnsanlığın İlk Dönemleri',
    '3.Ünite:  Orta Çağda Dünya',
    '4.Ünite:  İlk ve Orta Çağlarda Türk Dünyası',
    '5.Ünite:  İslam Medeniyetinin Doğuşu',
    '6.Ünite:  Türklerin İslamiyeti Kabulü Ve İlk Türk İslam Devletleri',
  ];
  final List<int> colorCodes = <int>[600];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Color(0xffFFB72B)),
            onPressed: () {},
            child: Container(
              height: 50,
              color: Color(0xffFFB72B),
              child: Center(
                  child: Text(
                '${entries[index]}',
                style: TextStyle(color: Colors.black),
              )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
