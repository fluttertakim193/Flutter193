import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesleki_egilim/ekranlar/hakkinda_ekran.dart';
import '../araclar/renk.dart';
import '../reusable_widgets/reusable_widget.dart';
import 'ana_ekran.dart';
import 'iletisim_ekran.dart';
import 'kayit_ekran.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _OturumAcmaEkrani();
}

class _OturumAcmaEkrani extends State<GirisEkrani> {

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
                //SizedBox(height: 10,),
                logoWidget("assets/images/logo.png"),
                SizedBox(height: 30,),
                reusableTextField("E-mail Gir", Icons.email_outlined, false, _emailTextController),
                SizedBox(height: 20,),
                reusableTextField("Şifre Gir", Icons.lock_outline, true, _sifreTextController),
                SizedBox(height: 20,
                ),
                signInSignUpButton(context, true, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
                signUpOption(),
                SizedBox(height: 20,),
                aboutUsOption(),
                SizedBox(height: 20,),
                contactUsOption(),
                SizedBox(height: 20,),
                //logoWidget("assets/images/logo.png")
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Yazılar  ile (link gibi) ekrana geçiş yapma
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Hesabınız yok mu?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen())); //Kayıt Ekranına git
          },
          child: const Text(" Üye Ol" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Row aboutUsOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Uygulama",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HakkindaEkran()));
          },
          child: const Text(" Hakkında" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Row contactUsOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Bize",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BizeUlasinEkran()));
          },
          child: const Text(" Ulaşın" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}
