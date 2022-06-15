import 'package:flutter/material.dart';
import 'package:soruapp/menu_icerikler/profilim.dart';
import 'package:soruapp/pages/home_page.dart';
import 'package:soruapp/menu_icerikler/path_provider.dart';
import 'package:soruapp/menu_icerikler/sorulan_soru.dart';
import 'package:soruapp/menu_icerikler/sqllite.dart';
import 'package:soruapp/menu_icerikler/takvim.dart';
import 'package:soruapp/menu_icerikler/yorum.dart';

import 'menu_icerikler/arkadas.dart';
import 'menu_icerikler/ayarlar.dart';
import 'menu_icerikler/calisma_grafigi.dart';
import 'menu_icerikler/hakkimizda.dart';
import 'menu_icerikler/iletisim.dart';
import 'main.dart';

class AnaButton extends StatelessWidget {
  const AnaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AnaSayfa()));
      },
      icon: Icon(Icons.home),
      color: Color(0xff525E75),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profilim()));
      },
      icon: Icon(Icons.insert_emoticon),
      color: Color(0xff525E75),
    );
  }
}

class HakkindaButton extends StatelessWidget {
  const HakkindaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Hakkimizda()));
      },
      icon: Icon(Icons.account_circle),
      color: Color(0xff525E75),
    );
  }
}

class IletisimButton extends StatelessWidget {
  const IletisimButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Iletisim()));
      },
      icon: Icon(Icons.call),
      color: Color(0xff525E75),
    );
  }
}

class SoruButton extends StatelessWidget {
  const SoruButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SorulanSoru()));
      },
      icon: Icon(Icons.question_answer),
      color: Color(0xff525E75),
    );
  }
}

class AyarButton extends StatelessWidget {
  const AyarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Ayarlar()));
      },
      icon: Icon(Icons.settings),
      color: Color(0xff525E75),
    );
  }
}

class YorumButton extends StatelessWidget {
  const YorumButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Yorumlar()));
      },
      icon: Icon(Icons.message),
      color: Color(0xff525E75),
    );
  }
}

class TakvimButton extends StatelessWidget {
  const TakvimButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.calendar_today,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => Takvim()),
            ),
          );
        });
  }
}

class ArkadasButton extends StatelessWidget {
  const ArkadasButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.group,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => Arkadaslar()),
            ),
          );
        });
  }
}

class NotButton extends StatelessWidget {
  const NotButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.chrome_reader_mode,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => EkleGoster()),
            ),
          );
        });
  }
}

class EkleButton extends StatelessWidget {
  const EkleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.library_add,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => NotEkleme()),
            ),
          );
        });
  }
}

class GrafikButton extends StatelessWidget {
  const GrafikButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.timeline,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => DurumGrafik()),
            ),
          );
        });
  }
}

class TemaButton extends StatelessWidget {
  const TemaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.change_circle,
          color: Color(0xff525E75),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => TemaDegistir()),
            ),
          );
        });
  }
}
