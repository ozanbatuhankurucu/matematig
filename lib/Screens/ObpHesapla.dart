import 'package:flutter/material.dart';

class ObpHesapla extends StatefulWidget {
  @override
  _ObpHesaplaState createState() => _ObpHesaplaState();
}

class _ObpHesaplaState extends State<ObpHesapla> {
  List<String> sistemler = ["100'lük sistem", "4'lük sistem"];
  String secilenSistem = "100'lük sistem";
  TextEditingController textEditingController;
  double obpPuani = 0;
  String obpPuani1 = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Önlisans Başarı Puanı Hesaplama",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * (9 / 10),
                        child: TF('Diploma Notunuz', textEditingController),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      DropdownButton<String>(
                        style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Montserrat',
                            color: Colors.black),
                        items: sistemler.map((oankiSistem) {
                          return DropdownMenuItem<String>(
                            child: Text(oankiSistem),
                            value: oankiSistem,
                          );
                        }).toList(),
                        onChanged: (s) {
                          setState(() {
                            secilenSistem = s;
                            textEditingController.text = "";
                            obpPuani1 = "";
                          });
                        },
                        value: secilenSistem,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "ÖBP Puanı: ",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "$obpPuani1",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width * (9 / 10),
                        child: RaisedButton(
                          color: Color(0xFFFE8A7E),
                          child: Text(
                            "HESAPLA",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            PuanHesapla();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField TF(String SayD, TextEditingController Te) {
    return TextField(
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 9.0, fontFamily: 'Montserrat'),
      decoration: InputDecoration(
        enabled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        contentPadding: EdgeInsets.only(top: 25.0),
        labelText: SayD,
        labelStyle: TextStyle(fontFamily: 'Montserrat', fontSize: 14.0),
        counterText: "",
      ),
      maxLength: 4,
      autocorrect: false,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      controller: Te,
    );
  }

  void PuanHesapla() {
    setState(() {
      obpPuani = double.parse(textEditingController.text.toString());
      if (secilenSistem == "100'lük sistem") {
        obpPuani1 = (obpPuani * 0.8).toStringAsFixed(1);
      } else {
        obpPuani1 = ((obpPuani * 25) * 0.8).toStringAsFixed(1);
      }
    });
  }
}
