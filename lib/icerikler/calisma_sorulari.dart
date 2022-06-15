import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class CalismaSorulari extends StatelessWidget {
  const CalismaSorulari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFE2E2),
        appBar: AppBar(
          backgroundColor: Color(0xff931A25),
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
          title: Text('Çalışma Materyalleri'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/kirmizi.png',
                    width: 300,
                    height: 200,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      // Spacer(),
                      ElevatedCardExample(),
                      ElevatedCardExample2(),
                      ElevatedCardExample3(),
                      ElevatedCardExample4(),
                      ElevatedCardExample5()
                      //Spacer(),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Card yapısı

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Card(
      color: Color(0xff52575D),
      child: SizedBox(
        width: 350,
        height: 50,
        child: Center(
          child: Text('Klasik Sorular', style: TextStyle(color: Colors.white)),
        ),
      ),
    ));
  }
}

class ElevatedCardExample2 extends StatelessWidget {
  const ElevatedCardExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Card(
      color: Color(0xff52575D),
      child: SizedBox(
        width: 350,
        height: 50,
        child: Center(
          child: Text('Doğru/Yanlış', style: TextStyle(color: Colors.white)),
        ),
      ),
    ));
  }
}

class ElevatedCardExample3 extends StatelessWidget {
  const ElevatedCardExample3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Color(0xff52575D),
        child: SizedBox(
          width: 350,
          height: 50,
          child: Center(
              child: Text(
            'Boşluk Doldurma',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}

class ElevatedCardExample4 extends StatelessWidget {
  const ElevatedCardExample4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Color(0xff52575D),
        child: SizedBox(
          width: 350,
          height: 50,
          child: Center(
              child: Text(
            'Çoktan Seçmeli',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}

class ElevatedCardExample5 extends StatelessWidget {
  const ElevatedCardExample5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Color(0xff52575D),
        child: SizedBox(
          width: 350,
          height: 50,
          child: Center(
              child: Text(
            'QUİZ Kendini Test Et!',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
