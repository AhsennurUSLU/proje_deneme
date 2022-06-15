import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class Yorumlar extends StatelessWidget {
  const Yorumlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
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
          backgroundColor: Color(0xffA3423C),
          title: Text('Yorumlarınız'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      padding: EdgeInsets.all(10.0),
                      child: YorumSayfasi(),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      padding: EdgeInsets.all(10.0),
                      child: YorumSayfasi(),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      padding: EdgeInsets.all(10.0),
                      child: YorumSayfasi(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YorumSayfasi extends StatefulWidget {
  const YorumSayfasi({Key? key}) : super(key: key);

  @override
  State<YorumSayfasi> createState() => _YorumSayfasiState();
}

class _YorumSayfasiState extends State<YorumSayfasi> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            cursorColor: Color(0xffA3423C),
            decoration: const InputDecoration(
              hintText: 'Yorumlarınız bizim için değerli :)',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Lütfen bir şeyler yazın ';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
              child: const Text('Gönder'),
              style: ElevatedButton.styleFrom(primary: Color(0xffA3423C)),
            ),
          ),
        ],
      ),
    );
  }
}
