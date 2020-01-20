import 'package:matematig/models/tercih.dart';
import 'package:flutter/material.dart';

class UniDetay extends StatefulWidget {
  List<Tercih> gelenDeneme2;
  String bolumAdi;
  UniDetay(this.gelenDeneme2, this.bolumAdi);

  @override
  _UniDetayState createState() => _UniDetayState();
}

class _UniDetayState extends State<UniDetay> {
  Color siyah = Colors.black;

  Future<List<Tercih>> temizListe;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(
            false); // burası ile yapmaktansa kendimiz yukarıdaki satır ile ben geri gelicem ve false döndericem
        //diyebiliriz.
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFD7465),
          centerTitle: true,
          title: Text(
            "${widget.bolumAdi}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Monserrat',
                color: Colors.white),
          ),
        ),
        body: Container(
            child: ListView.builder(
          itemBuilder: (BuildContext ctxt, int index) {
            return Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: new Border.all(
                    color: Colors.white, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          "${widget.gelenDeneme2[index].universite}/${widget.gelenDeneme2[index].fakulte}/${widget.gelenDeneme2[index].bolum}",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Color(0xFFFE8A7E),
                        foregroundColor: Colors.white,
                        child: Text("${index + 1}"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Genel Kontenjan: ${widget.gelenDeneme2[index].genelKontenjan}",
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Yerleşen: ${widget.gelenDeneme2[index].yerlesen}",
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 45,
                      ),
                      Flexible(
                        child: Text(
                          "Taban Puan: ${widget.gelenDeneme2[index].tabanPuan}",
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          "Program Kodu: ${widget.gelenDeneme2[index].tercihKodu}",
                          style: TextStyle(fontSize: 11.0),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                ],
              ),
            );
          },
          itemCount: widget.gelenDeneme2.length,
        )),
      ),
    );
  }
}
