// To parse this JSON data, do
//
//     final tercih = tercihFromJson(jsonString);

import 'dart:convert';

Tercih tercihFromJson(String str) => Tercih.fromJson(json.decode(str));

String tercihToJson(Tercih data) => json.encode(data.toJson());

class Tercih {
  int tercihKodu;
  String universite;
  String fakulte;
  String bolum;
  String puanTuru;
  int genelKontenjan;
  int yerlesen;
  int bosKontenjan;
  double tabanPuan;
  double tavanPuan;

  Tercih({
    this.tercihKodu,
    this.universite,
    this.fakulte,
    this.bolum,
    this.puanTuru,
    this.genelKontenjan,
    this.yerlesen,
    this.bosKontenjan,
    this.tabanPuan,
    this.tavanPuan,
  });

  factory Tercih.fromJson(Map<String, dynamic> json) => new Tercih(
        tercihKodu: json["tercihKodu"],
        universite: json["universite"],
        fakulte: json["fakulte"],
        bolum: json["bolum"],
        puanTuru: json["puanTuru"],
        genelKontenjan: json["genelKontenjan"],
        yerlesen: json["yerlesen"],
        bosKontenjan: json["bosKontenjan"],
        tabanPuan: json["tabanPuan"].toDouble(),
        tavanPuan: json["tavanPuan"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "tercihKodu": tercihKodu,
        "universite": universite,
        "fakulte": fakulte,
        "bolum": bolum,
        "puanTuru": puanTuru,
        "genelKontenjan": genelKontenjan,
        "yerlesen": yerlesen,
        "bosKontenjan": bosKontenjan,
        "tabanPuan": tabanPuan,
        "tavanPuan": tavanPuan,
      };
}
