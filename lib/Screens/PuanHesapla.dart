import 'package:flutter/material.dart';

class PuanHesapla extends StatefulWidget {
  @override
  _PuanHesaplaState createState() => _PuanHesaplaState();
}

class _PuanHesaplaState extends State<PuanHesapla> {
  String netControl = "";
  bool checkBoxState = false;
  double olbpItem = 0.60;
  TextEditingController textEditingControllerOLBP;
  TextEditingController textEditingControllerSayY;
  TextEditingController textEditingControllerSozY;
  TextEditingController textEditingControllerSayD;
  TextEditingController textEditingControllerSozD;
  double sozelNet = 0;
  double sayisalNet = 0;
  String sozelPuan = "";
  String sayisalPuan = "";
  String eaPuan = "";
  var sayisalDogru = 0;
  var sayisalYanlis = 0;
  var sozelDogru = 0;
  var sozelYanlis = 0;
  var onLisansBasariPuani = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    textEditingControllerOLBP = TextEditingController();
    textEditingControllerSayY = TextEditingController();
    textEditingControllerSozY = TextEditingController();
    textEditingControllerSayD = TextEditingController();
    textEditingControllerSozD = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingControllerOLBP.dispose();
    textEditingControllerSayY.dispose();
    textEditingControllerSozY.dispose();
    textEditingControllerSayD.dispose();
    textEditingControllerSozD.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width * (2 / 5);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: genislik,
                      child:
                          TF('Sayısal Doğru Sayısı', textEditingControllerSayD),
                    ),
                    Container(
                      width: genislik,
                      child: TF(
                          'Sayısal Yanlış Sayısı', textEditingControllerSayY),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: genislik,
                      child:
                          TF('Sözel Doğru Sayısı', textEditingControllerSozD),
                    ),
                    Container(
                      width: genislik,
                      child:
                          TF('Sözel Yanlış Sayısı', textEditingControllerSozY),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: genislik,
                  child: TF('Önlisans Başarı Puanı', textEditingControllerOLBP),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                      child: Text(
                    netControl,
                    style: TextStyle(
                        fontSize: 11.0,
                        fontFamily: 'Montserrat',
                        color: Colors.red),
                  )),
                ),
              ),
              CheckboxListTile(
                value: checkBoxState,
                onChanged: (secildi) {
                  kontrol(secildi);
                },
                activeColor: Colors.red,
                title: Text(
                  "Önceki DGS`de bir programa yerleştirildiyseniz kutucuğu işaretleyiniz",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                selected: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Sözel Puan:"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(sozelPuan.toString()),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Sayısal Puan:"),
                      SizedBox(
                        height: 8,
                      ),
                      Text(sayisalPuan.toString()),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("EA Puan:"),
                      SizedBox(height: 8),
                      Text(eaPuan.toString()),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: genislik,
                    child: RaisedButton(
                      color: Color(0xFFFE8A7E),
                      child: Text("HESAPLA"),
                      onPressed: () {
                        PuanHesapla();
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    width: genislik,
                    child: RaisedButton(
                      color: Color(0xFFFE8A7E),
                      child: Text("TEMİZLE"),
                      onPressed: () {
                        ekraniTemizle();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextField TF(String SayD, TextEditingController Te) {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 9.0,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        contentPadding: EdgeInsets.only(top: 25.0),
        labelText: SayD,
        labelStyle: TextStyle(fontFamily: 'Montserrat', fontSize: 9.0),
        counterStyle: TextStyle(fontSize: 9.0),
        counterText: "",
      ),
      maxLength: 2,
      autocorrect: false,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      controller: Te,
    );
  }

  void PuanHesapla() {
    sayisalDogru = int.parse(textEditingControllerSayD.text.toString());
    sayisalYanlis = int.parse(textEditingControllerSayY.text.toString());
    sozelDogru = int.parse(textEditingControllerSozD.text.toString());
    sozelYanlis = int.parse(textEditingControllerSozY.text.toString());
    onLisansBasariPuani =
        int.parse((textEditingControllerOLBP.text.toString()));
    sayisalNet = sayisalDogru - (sayisalYanlis / 4);
    sozelNet = sozelDogru - (sozelYanlis / 4);
    setState(() {
      if (sozelNet >= 0.5 && sayisalNet >= 0.5) {
        sayisalPuan = ((3 * (50 + 10 * ((sayisalNet - 7.58) / 9.45))) +
                (0.6 * (50 + 10 * ((sozelNet - 23.91) / 13.59))) +
                (onLisansBasariPuani * olbpItem))
            .toStringAsFixed(4);
        sozelPuan = ((0.6 * (50 + 10 * ((sayisalNet - 7.58) / 9.45))) +
                (3 * (50 + 10 * ((sozelNet - 23.91) / 13.59))) +
                (onLisansBasariPuani * olbpItem))
            .toStringAsFixed(4);

        eaPuan = ((1.8 * (50 + 10 * ((sayisalNet - 7.58) / 9.45))) +
                (1.8 * (50 + 10 * ((sozelNet - 23.91) / 13.59))) +
                (onLisansBasariPuani * olbpItem))
            .toStringAsFixed(4);
      } else {
        netControl =
            "Her iki testtende en az 0.5 net çıkarılması gerekiyor.Çıkaramayanların sınavları geçersiz sayılacaktır.";
      }
    });
  }

  void kontrol(bool secildi) {
    if (secildi == true) {
      setState(() {
        checkBoxState = secildi;
        olbpItem = 0.45;
      });
    } else {
      setState(() {
        checkBoxState = secildi;
        olbpItem = 0.60;
      });
    }
  }

  void ekraniTemizle() {
    setState(() {
      textEditingControllerOLBP.text = "";
      textEditingControllerSozY.text = "";
      textEditingControllerSayY.text = "";
      textEditingControllerSozD.text = "";
      textEditingControllerSayD.text = "";
      netControl = "";
    });
  }
}
