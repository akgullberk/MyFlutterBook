import 'package:filmler_app/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;

  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title:  Text(widget.film.ad),),

      body:  Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.film.resim}"),
            Text("${widget.film.fiyat} TL", style: TextStyle(fontSize: 50),)
        ],
        ),
      ),
    );
  }
}