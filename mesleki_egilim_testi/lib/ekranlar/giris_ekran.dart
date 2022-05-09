
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesleki_egilim_testi/reusable_widgets/reusable_widget.dart';
import 'package:mesleki_egilim_testi/ekranlar/ana_ekran.dart';
import 'package:mesleki_egilim_testi/ekranlar/kayit_ekran.dart';
import 'package:mesleki_egilim_testi/araclar/renk_araclari.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _OturumAcmaEkrani();
}

class _OturumAcmaEkrani extends State<SignInScreen> {

  TextEditingController _sifreTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
      hexStringToColor("CB2B93"),
      hexStringToColor("9546C4"),
      hexStringToColor("5E61F4")
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height*0.2, 20, 0),
          child: Column(
            children: <Widget>[
              //logoWidget("assets/images/logo.png"), //Kendi takım logomuzu koyabiliriz.
              SizedBox(height: 10,),
              logoWidget("assets/images/logo.png"),
              SizedBox(height: 30,),
              reusableTextField("E-mail Gir", Icons.person_outline, false, _emailTextController),
              SizedBox(height: 20,),
              reusableTextField("Şifre Gir", Icons.lock_outline, true, _sifreTextController),
              SizedBox(height: 20,
              ),
              signInSignUpButton(context, true, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signUpOption()
            ],
          ),
        ),
    ),
    ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Hesabınız yok mu?",
          style: TextStyle(color: Colors.white70)),
          GestureDetector(
            onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
           child: const Text(" Üye Ol" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    )
      ],
    );
  }

}
