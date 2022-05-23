import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../araclar/renk.dart';
import '../reusable_widgets/reusable_widget.dart';

class HakkindaEkran extends StatefulWidget {
  const HakkindaEkran({Key? key}) : super(key: key);

  @override
  State<HakkindaEkran> createState() => _HakkindaEkranState();
}

class _HakkindaEkranState extends State<HakkindaEkran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true, appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(" Hakkında", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                ListTile(
                  subtitle: Text('Meslek seçimi bireyin hayatındaki en önemli kararlardan birisidir.'
                      'Bir insan için önemi düşünüldüğünde yaşamın neredeyse bütününü ilgilendirir.'
                      'Kişi mesleğini seçmekle yapacağı işi, yaşam biçimini, arkadaş çevresini, gelecekte yaşamın ona sunacağı imkanları da seçmiş olur,'
                      'başka bir deyişle gelecek yaşantısında kiminle, nerede, nasıl ilişki kuracağını da seçer.'
                      'Toplumsal olarak bakıldığında da konu geleceğin doğru şekillenmesinde belirleyiciliği açısından çok önemlidir.'
                      'Mesleğini seven, mesleğine kendisini adayabilecek düzeyde bir ilişki geliştiren ve bir ömür boyu onunla ilişkisini sürdürmek üzere yola çıkan kişi,'
                      'hem mesleğini “doğru” yapacaktır, hem de doğru işlere imza atacaktır. Bu sebeple erken yaşlarda mesleki yönelimin ne kadar önemli olduğunu anlamış olmaktayız.'
                       'Mesleki Eğilim Testi uygulamamız ile, öğrenci ve diğer kullanıcıların sahip olduğu yetenek, mesleki ilgi ve özelliklerini keşfetmeyi'
                      'amaçlayan, alanında uzman kişiler tarafından hazırlanmış 160 soru sizlere sunulmuştur. Sizlerin sorulara verdiği cevaplar doğrultusunda ilgili ve yatkın olduğunuz '
                      'meslek grubu ile ilgili bir bilgilendirme ile karşılaşacaksınız. Bu nedenle tüm sorulara dikkatli ve net şekilde yanıt vermenizi rica ederiz. Sonuç ekranında görüşmek üzere!'
                    , style: TextStyle(fontSize: 16, color: Colors.white70),),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
