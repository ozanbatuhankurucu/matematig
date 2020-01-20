import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cikmisSorular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFD7465),
        centerTitle: true,
        title: Text("Çıkmış Sorular"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            buildCenter(
                "2017 DGS Çıkmış Soru Ve Cevapları",
                "https://dokuman.osym.gov.tr/pdfdokuman/2017/DGS/2017_Dgs_Soru_Kitapciklari.pdf",
                13.0),
            buildCenter(
                "2016 DGS Çıkmış Soru Ve Cevapları",
                "https://dokuman.osym.gov.tr/pdfdokuman/2016/DGS/2016_Dgs_Soru_Kitapciklari.pdf",
                13.0),
            buildCenter(
                "2015 DGS Çıkmış Soru Ve Cevapları",
                "https://dokuman.osym.gov.tr/pdfdokuman/2015/DGS/2015_Dgs_Soru_Kitapciklari.pdf",
                13.0),
            buildCenter(
                "2014 DGS Çıkmış Soru Ve Cevapları",
                "https://dokuman.osym.gov.tr/pdfdokuman/2014/DGS/2014_Dgs_Soru_Kitapciklari.pdf",
                13.0),
            buildCenter(
                "2013 DGS Çıkmış Soru Ve Cevapları",
                "https://dokuman.osym.gov.tr/pdfdokuman/2013/DGS/DGS_internet%20kitap%C3%A7%C4%B1%C4%9F%C4%B1.pdf",
                13.0),
            buildCenter(
                "2012 DGS Çıkmış Soru Ve Cevapları",
                "http://www.osym.gov.tr/Eklenti/2923,dgs2012010101kamuskmaster1pdf.pdf?0",
                13.0),
            buildCenter("2011 DGS Çıkmış Soru Ve Cevapları",
                "http://www.osym.gov.tr/Eklenti/2947,dgs2011pdf.pdf?0", 13.0),
            buildCenter("2010 DGS Çıkmış Soru Ve Cevapları",
                "http://www.osym.gov.tr/Eklenti/2960,dgs2010pdf.pdf?0", 13.0),
            buildCenter("2009 DGS Çıkmış Soru Ve Cevapları",
                "http://www.osym.gov.tr/Eklenti/2968,dgs2009pdf.pdf?0", 13.0),
            new Text(
              '2008 DGS Çıkmış Soru Ve Cevapları',
              style: TextStyle(fontSize: 13.0),
            ),
            buildCenter(
                "-Sayısal Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2008/2008_DGS_SORULARI/dgs2008sayisal.pdf",
                11.0),
            buildCenter(
                "-Sayısal Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2008/2008_DGS_SORULARI/dgs2008sayisalcevapanah.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2008/2008_DGS_SORULARI/dgs2008sozel.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2008/2008_DGS_SORULARI/dgs2008sozelcevapanah.pdf",
                11.0),
            new Text(
              '2007 DGS Çıkmış Soru Ve Cevapları',
              style: TextStyle(fontSize: 13.0),
            ),
            buildCenter(
                "-Sayısal Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2007_DGS_SORULARI/dgs2007sayisalbolum.pdf",
                11.0),
            buildCenter(
                "-Sayısal Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2007_DGS_SORULARI/dgs2007sayisalcevapanah.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2007_DGS_SORULARI/dgs2007sozelbolum.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/2007_DGS_SORULARI/dgs2007sozelcevapanah.pdf",
                11.0),
            new Text(
              '2006 DGS Çıkmış Soru Ve Cevapları',
              style: TextStyle(fontSize: 13.0),
            ),
            buildCenter(
                "-Sayısal Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/DGS2006/DGSSORULAR/dgs2006sayisalbolum.pdf",
                11.0),
            buildCenter(
                "-Sayısal Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/DGS2006/DGSSORULAR/dgs2006sayisalcevapanah.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/DGS2006/DGSSORULAR/dgs2006sozelbolum.pdf",
                11.0),
            buildCenter(
                "-Sözel Bölüm Testi Cevap Anahtarı",
                "https://dokuman.osym.gov.tr/pdfdokuman/arsiv/DGS2006/DGSSORULAR/dgs2006sozelcevapanah.pdf",
                11.0),
          ],
        ),
      ),
    );
  }

  Padding buildCenter(String text, String url, double fS) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: InkWell(
            child: new Text(
              '$text',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: fS,
              ),
            ),
            onTap: () => launch('$url')),
      ),
    );
  }
}
