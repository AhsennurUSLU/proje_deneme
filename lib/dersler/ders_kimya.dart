import 'package:flutter/material.dart';

class KimyaDers extends StatelessWidget {
  const KimyaDers({Key? key}) : super(key: key);

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
          title: Text('9.Sınıf Kimya Konuları'),
        ),
        body: KimyaPage(),
      ),
    );
  }
}

class KimyaPage extends StatelessWidget {
  KimyaPage({Key? key}) : super(key: key);
  final List<String> entries = <String>[
    '1.Ünite: Kimya Bilimi',
    '2.Ünite: Atom ve Periyodik Sistem',
    '3.Ünite: Kimyasal Türler Arası Etkileşimler',
    '4.Ünite: Maddenin Halleri',
    '5.Ünite: Çevre Kimyası'
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
