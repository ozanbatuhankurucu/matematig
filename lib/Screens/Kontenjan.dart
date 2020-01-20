import 'dart:convert';

import 'package:matematig/models/Bolum.dart';
import 'package:flutter/material.dart';

class Kontenjan extends StatefulWidget {
  @override
  _KontenjanState createState() => _KontenjanState();
}

class _KontenjanState extends State<Kontenjan> {
  List<Bolum> bolumler;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: veriKaynaginiOku(),
        builder: (context, sonuc) {
          if (sonuc.hasData) {
            bolumler = sonuc.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "2018",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Fark",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "2019",
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    bolumler[index]
                                        .onsekiz_kontenjan
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  buildFark(index),
                                  aofControl(index),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 8.0, bottom: 8.0, top: 8.0),
                            width: MediaQuery.of(context).size.width * (3 / 10),
                            height:
                                MediaQuery.of(context).size.height * (2 / 40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35.0),
                                  bottomLeft: Radius.circular(35.0)),
                              color: Color(0xFFFD7465),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  bolumler[index].bolum_adi,
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: 'Montserrat',
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                );
              },
              itemCount: bolumler.length,
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Text aofControl(int index) {
    if (bolumler[index].ondokuz_kontenjan == 321) {
      return Text(
        bolumler[index].ondokuz_kontenjan.toString(),
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold),
      );
    } else if (bolumler[index].ondokuz_kontenjan == 209) {
      return Text(
        bolumler[index].ondokuz_kontenjan.toString(),
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold),
      );
    } else {
      return Text(
        bolumler[index].ondokuz_kontenjan.toString(),
        style: TextStyle(
            fontSize: 10.0,
            fontFamily: 'Montserrat',
            color: Colors.black,
            fontWeight: FontWeight.bold),
      );
    }
  }

  Text buildFark(int index) {
    int fark =
        bolumler[index].ondokuz_kontenjan - bolumler[index].onsekiz_kontenjan;
    if (fark < 0) {
      return Text(
        fark.toString(),
        style: TextStyle(
            color: Colors.red, fontSize: 10.0, fontFamily: 'Montserrat'),
      );
    } else {
      return Text(
        "+" + fark.toString(),
        style: TextStyle(
            color: Colors.green, fontSize: 10.0, fontFamily: 'Montserrat'),
      );
    }
  }

  Future<List<Bolum>> veriKaynaginiOku() async {
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString('assets/data/kontenjan.json');

    List<Bolum> bolumler = (json.decode(gelenJson) as List)
        .map((mapYapisi) => Bolum.fromJsonMap(mapYapisi))
        .toList();

    return bolumler;
  }
}
