import 'package:flutter/material.dart';
import 'package:soruapp/service/arkadas_service.dart';

import '../model/arkadas_model.dart';
import '../pages/home_page.dart';

class Arkadaslar extends StatefulWidget {
  Arkadaslar({Key? key}) : super(key: key);

  @override
  State<Arkadaslar> createState() => _ArkadaslarState();
}

class _ArkadaslarState extends State<Arkadaslar> {
  ArkadasService _service = ArkadasService();
  bool? isLoading;

  List<Data?> arkadas = [];
  @override
  void initState() {
    super.initState();
    _service.fetchArkadas().then((value) {
      if (value != null && value.data != null) {
        setState(() {
          arkadas = value.data;
          isLoading = true;
        });
      } else {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Color(0xffBB6464),
            title: Text('Arkadaşlarım'),
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
          ),
          body: isLoading == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : isLoading == true
                  ? ListView.builder(
                      itemCount: arkadas.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                              "${arkadas[index]!.firstName + arkadas[index]!.lastName}"),
                          subtitle: Text(arkadas[index]!.email),
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(arkadas[index]!.avatar),
                          ),
                          trailing: Icon(Icons.person_add),
                        );
                      })
                  : const Center(
                      child: Text('Beklenmeyen bir sorun oluştu'),
                    )),
    );
  }
}

/*Image.asset(
            'assets/images/arkadaslar.png',
            width: 200,
            height: 100,
          );*/
