import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;
  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {

  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  Future<void> guncelle(int kisi_id,String kisi_ad,String kisi_tel) async {
    print("Kişi Güncellendi: $kisi_id - $kisi_ad - $kisi_tel");
  }

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad!;
    tfKisiTel.text = kisi.kisi_tel!;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Detay Sayfa"),),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(controller: tfKisiAdi,decoration: const InputDecoration(hintText: "Kişi Ad"),),
            TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kişi Tel"),),
            ElevatedButton(onPressed: () {
              guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
            }, child: const Text("GÜNCELLE"))
          ],

        ),
      ),
    ));
  }
}
