import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class Alistirmalar extends StatelessWidget {
  const Alistirmalar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlistirmaPage(),
    );
  }
}

class AlistirmaPage extends StatelessWidget {
  const AlistirmaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFFF3E2),
        //backgroundColor: Color(0xffFFE3D8),
        appBar: AppBar(
          backgroundColor: Color(0xff825959),
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
          title: const Text('Alıştırmalar'),
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
              child: Siniflarim(),
            ),
            Center(
              child: Siniflarim(),
            ),
            Center(
              child: Siniflarim(),
            ),
            Center(
              child: Siniflarim(),
            ),
          ],
        ),
      ),
    );
  }
}

class Siniflarim extends StatefulWidget {
  const Siniflarim({Key? key}) : super(key: key);

  @override
  State<Siniflarim> createState() => _Siniflarim();
}

class _Siniflarim extends State<Siniflarim> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text('Hepsini Seç'),
          ),
        ],
        rows: List<DataRow>.generate(
          numItems,
          (int index) => DataRow(
            color: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary.withOpacity(0.08);
              }

              if (index.isEven) {
                return Colors.grey.withOpacity(0.3);
              }
              return null;
            }),
            cells: <DataCell>[DataCell(Text('Alıştırma $index'))],
            selected: selected[index],
            onSelectChanged: (bool? value) {
              setState(() {
                selected[index] = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
