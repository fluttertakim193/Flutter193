import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mesleki_egilim_testi/reusable_widgets/reusable_widget.dart';
import 'package:mesleki_egilim_testi/ekranlar/ana_ekran.dart';
import 'package:mesleki_egilim_testi/araclar/renk_araclari.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _sifreTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _kullaniciAdiTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true, appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(" Kayıt Ol", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
    ),
    body: Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
      hexStringToColor("CB2B93"),
      hexStringToColor("9546C4"),
      hexStringToColor("5E61F4")
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    child: SingleChildScrollView(child: Padding(
        padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20,),
                reusableTextField("Kullanıcı Adı Gir", Icons.person_outline, false, _kullaniciAdiTextController),
                const SizedBox(height: 20,),
                reusableTextField("E-mail Gir", Icons.email_outlined, false, _emailTextController),
                const SizedBox(height: 20,),
                reusableTextField("Şifre Gir", Icons.lock_outline, true, _sifreTextController),
                const SizedBox(height: 20,),
                signInSignUpButton(context, false, () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _sifreTextController.text).then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ))),
    );
  }
}