import 'dart:convert';
import 'package:matematig/Screens/uniDetay.dart';
import 'package:matematig/models/tercih.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_admob/firebase_admob.dart';

const APP_ID = "1c1f38d63b647e87";


class tercihMotoru extends StatefulWidget {
  @override
  _tercihMotoruState createState() => _tercihMotoruState();
}

class _tercihMotoruState extends State<tercihMotoru> {

  String bolumAdi;
  double buyukPuan = 0;
  double kucukPuan = 0;
  TextEditingController textControllerPuan;
  TextEditingController textControllerArti;
  TextEditingController textControllerEksi;
  TextEditingController textControllerBolumAdi;
  String url = "http://bir.sekizyildiz.com/yeniveri.json";
  List<Tercih> tercih;
  Future<List<Tercih>> veri;
  List<Tercih> gelenDeneme2;

  InterstitialAd interstitialAd;


  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: APP_ID != null ? [APP_ID] : null,
    keywords: ['Dgs', 'Matematik'],
  );



  InterstitialAd buildInterstitial() {
    return InterstitialAd(
        adUnitId: "ca-app-pub-1727786720770536/9784824282",
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          if (event == MobileAdEvent.failedToLoad) {
            interstitialAd..load();
          } else if (event == MobileAdEvent.closed) {
            interstitialAd = buildInterstitial()..load();
          }
          print(event);
        });
  }



  Future<List<Tercih>> pokemonlariGetir() async {
    var response = await http.get(url);
    var decodedJson = json.decode(utf8.decode(response.bodyBytes));
    tercih = new List<Tercih>.from(decodedJson.map((x) => Tercih.fromJson(x)));
    return tercih;
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textControllerPuan = TextEditingController();
    textControllerArti = TextEditingController();
    textControllerEksi = TextEditingController();
    textControllerBolumAdi = TextEditingController();
    veri = pokemonlariGetir();
    gelenDeneme2 = new List<Tercih>();
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-1727786720770536~8854885998");
    interstitialAd = buildInterstitial()..load();


  }

  @override
  void dispose() {
    // TODO: implement dispose
    textControllerBolumAdi.dispose();
    textControllerPuan.dispose();
    textControllerArti.dispose();
    textControllerEksi.dispose();
    interstitialAd?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width * (2 / 5);
    return OrientationBuilder(builder: (context, orientation) {
      return FutureBuilder(
        future: veri,
        builder: (context, AsyncSnapshot<List<Tercih>> gelenDeneme) {
          if (gelenDeneme.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (gelenDeneme.connectionState == ConnectionState.done) {
            return Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * (3 / 5),
                      child: buildTextField("Lisans Bölüm İsmini Giriniz",
                          textControllerBolumAdi),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "-",
                          style: TextStyle(fontSize: 15.0, color: Colors.red),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (1 / 5),
                          child: buildTextField("", textControllerEksi),
                        ),
                        Container(
                          width: genislik,
                          child: buildTextField(
                              "Puan Giriniz", textControllerPuan),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (1 / 5),
                          child: buildTextField("", textControllerArti),
                        ),
                        Text(
                          "+",
                          style: TextStyle(fontSize: 15.0, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    (1.5 / 20),
                                width:
                                    MediaQuery.of(context).size.width * (2 / 5),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFD7465),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50)),
                                ),
                                child: Center(
                                    child: Text(
                                  "Listeyi Gör",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.0),
                                )),
                              ),
                              onTap: () {
                                interstitialAd
                                  ..load()
                                  ..show();
                                bolumAdi = textControllerBolumAdi.text
                                    .toString()
                                    .toUpperCase();
                                puaniHesaplama();
                                gelenDeneme.data.forEach(filtreAt);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UniDetay(
                                          gelenDeneme2,
                                          bolumAdi)), //Constructor içerisinde veriyi gönderdik
                                ).then((gelenListe) {
                                  if (gelenListe == false) {
                                    gelenDeneme2 = new List<Tercih>();
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (gelenDeneme.connectionState == ConnectionState.none) {
            return Center(
              child: Text("Internet bağlantınızı kontrol ediniz."),
            );
          } else {
            return null;
          }
        },
      );
    });
  }

  TextField buildTextField(String labelText, TextEditingController TF) {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 9.0,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        contentPadding: EdgeInsets.only(top: 25.0),
        counterStyle: TextStyle(fontSize: 9.0),
        counterText: "",
        labelText: labelText,
      ),
      maxLength: 50,
      autocorrect: false,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      controller: TF,
    );
  }

  void filtreAt(Tercih x) {
    if (x.bolum
            .toLowerCase()
            .contains(textControllerBolumAdi.text.toString().toLowerCase()) &&
        kucukPuan <= x.tabanPuan &&
        x.tabanPuan <= buyukPuan) gelenDeneme2.add(x);
  }

  void puaniHesaplama() {
    buyukPuan = double.parse(textControllerPuan.text.toString()) +
        double.parse(textControllerArti.text.toString());
    kucukPuan = double.parse(textControllerPuan.text.toString()) -
        double.parse(textControllerEksi.text.toString());
  }


}
