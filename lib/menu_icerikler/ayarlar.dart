import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class Ayarlar extends StatelessWidget {
  const Ayarlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Ayarlar'),
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
          backgroundColor: Color(0xff519259),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 100,
                    padding: EdgeInsets.all(10.0),
                    child: GeceModu(),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xff519259),
                    width: 250,
                    height: 100,
                    padding: EdgeInsets.all(10.0),
                    child: BoyutAyarla(),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Color(0xff519259),
                    width: 240,
                    height: 90,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dil: Türkçe'),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [CheckedBox()],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeceModu extends StatefulWidget {
  const GeceModu({Key? key}) : super(key: key);

  @override
  State<GeceModu> createState() => _GeceModuState();
}

class _GeceModuState extends State<GeceModu> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      tileColor: Color(0xff519259),
      title: const Text('Gece Modu'),
      value: _lights,
      onChanged: (bool value) {
        setState(() {
          _lights = value;
        });
      },
      secondary: const Icon(Icons.lightbulb_outline),
    );
  }
}

class CheckedBox extends StatefulWidget {
  const CheckedBox({Key? key}) : super(key: key);

  @override
  State<CheckedBox> createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xff5EAAA8);
      }
      return Colors.black;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class BoyutAyarla extends StatefulWidget {
  const BoyutAyarla({
    Key? key,
  }) : super(key: key);

  @override
  State<BoyutAyarla> createState() => _BoyutAyarlaState();
}

class _BoyutAyarlaState extends State<BoyutAyarla> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff519259),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Yazı boyutunu arttır: ',
          ),
          Text(
            '% $_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff97BFB4),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
