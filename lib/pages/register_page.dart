//import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    }
    ;
    //add user details
    addUserDetails(
      _firstNameController.text.trim(),
      _lastNameController.text.trim(),
      _emailController.text.trim(),
      int.parse(_ageController.text.trim()),
    );
  }

  Future addUserDetails(
    String firstName,
    String lastName,
    String email,
    int age,
  ) async {
    await FirebaseFirestore.instance.collection('Kullanicilar').add({
      'ad': firstName,
      'soyad': lastName,
      'email': email,
      'yas': age,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*Image.asset(
                'assets/images/girisEkrani.png',
                width: 180,
                height: 180,
              ),*/
              SizedBox(
                height: 50,
              ),
              Text(
                'Merhaba',
                style: TextStyle(fontFamily: 'BebasNeue', fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Aşağıdan Kayıt ol ',
                style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18),
              ),
              SizedBox(
                height: 50,
              ),

              // first name textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_pin),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Adınız',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // last name textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_pin),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Soyadınız',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // age textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _ageController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.today),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Yaşınız',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'E-mail',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.https),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Parola',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // confirm password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  controller: _confirmpasswordController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.https),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff406882)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Parolayı Tekrar Gir ',
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),

              SizedBox(height: 10),

              //sign up button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: signUp,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff406882),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Üye Ol ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //Üye değil misin? şimdi kaydol
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Üye Oldunuz!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: widget.showLoginPage,
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
