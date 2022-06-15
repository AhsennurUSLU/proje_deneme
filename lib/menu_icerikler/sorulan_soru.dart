import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class SorulanSoru extends StatelessWidget {
  const SorulanSoru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Color(0xff6B4F4F),
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
          title: Text('Sıkça Sorulan Sorular'),
        ),
        body: SoruPaneli(),
      ),
    );
  }
}

// Expansion panel Bilgilerini içerir.

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

// sorular
List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Soru $index',
      expandedValue: '$index. soruya verilen cevap:',
    );
  });
}

class SoruPaneli extends StatefulWidget {
  const SoruPaneli({Key? key}) : super(key: key);

  @override
  State<SoruPaneli> createState() => _SoruPaneliState();
}

class _SoruPaneliState extends State<SoruPaneli> {
  final List<Item> _data = generateItems(4);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              tileColor: Color(0xffE6C4C0),
              title: Text(item.expandedValue),
              subtitle: const Text(
                  'Sınav Rehberim uygulamasına kayıtlı değilseniz öncelikle kayıt olmalısınız.Eğer uygulamaya kayıtlıysanız Anasayfadaki "Başla" yazan butona'
                  'tıklayıp Giriş yapacağınız sayfaya geldikten sonra e-mail adresinizi ve şifrenizi girerek uygulamaya giriş yapabilirsiniz.'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
