import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mesleki_egilim/ekranlar/giris_ekran.dart';

import '../araclar/renk.dart';
import '../reusable_widgets/reusable_widget.dart';

class BizeUlasinEkran extends StatefulWidget {
  const BizeUlasinEkran({Key? key}) : super(key: key);

  @override
  State<BizeUlasinEkran> createState() => _BizeUlasinEkranState();
}

class _BizeUlasinEkranState extends State<BizeUlasinEkran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true, appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(" Bize Ulaşın", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height*0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                SizedBox(height: 10,),
                Text('EduTech', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.email_outlined, size: 23, color: Colors.purpleAccent,),
                    title: Text('iletisimedutech@gmail.com', style: TextStyle(fontSize: 17, color: Colors.purpleAccent),),
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.phone, size: 23, color: Colors.purpleAccent,),
                    title: Text('+90 538 716 4016', style: TextStyle(fontSize: 17, color: Colors.purpleAccent),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
