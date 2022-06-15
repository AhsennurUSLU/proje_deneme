import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import '../pages/home_page.dart';

class EkleGoster extends StatelessWidget {
  const EkleGoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Not-Ekle-Göster',
      home: HomePageGoster(),
    );
  }
}

class HomePageGoster extends StatefulWidget {
  const HomePageGoster({Key? key}) : super(key: key);

  @override
  _HomePageGosterState createState() => _HomePageGosterState();
}

class _HomePageGosterState extends State<HomePageGoster> {
  // This will be displayed on the screen
  String? _content;

  // Find the Documents path
  Future<String> _getDirPath() async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  // This function is triggered when the "Read" button is pressed
  Future<void> _readData() async {
    final dirPath = await _getDirPath();
    final myFile = File('$dirPath/data.txt');
    final data = await myFile.readAsString(encoding: utf8);
    setState(() {
      _content = data;
    });
  }

  // TextField controller
  final _textController = TextEditingController();
  // This function is triggered when the "Write" buttion is pressed
  Future<void> _writeData() async {
    final _dirPath = await _getDirPath();

    final _myFile = File('$_dirPath/data.txt');
    // If data.txt doesn't exist, it will be created automatically

    await _myFile.writeAsString(_textController.text);
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Kelime-Ekle-Göster'),
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
        backgroundColor: Color(0xffD9534F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(labelText: 'Kelime Girin'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xffD9534F)),
              child: const Text('Kelimeyi Kaydet'),
              onPressed: _writeData,
            ),
            const SizedBox(
              height: 150,
            ),
            Text(_content ?? 'Kelimeyi görmek için tıklayın',
                style: const TextStyle(fontSize: 24, color: Color(0xff354259))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xffD9534F)),
              child: const Text('Kelimeyi göster'),
              onPressed: _readData,
            )
          ],
        ),
      ),
    );
  }
}
