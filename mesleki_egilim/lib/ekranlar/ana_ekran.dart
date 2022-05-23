import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'giris_ekran.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _AnaEkran();
}

class _AnaEkran extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Sonradan Eklenecekler, Şimdilik Çıkış Yap"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Oturum Kapatıldı");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GirisEkrani()));
            });
          },
        ),
      ),
    );
  }
}

