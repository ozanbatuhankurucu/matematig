import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cikmisSorular.dart';

class DgsNedir extends StatelessWidget {
  Color kirmizi = Colors.red;
  Color siyah = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildsubText(
              "Dikey Geçiş Sınavı (DGS) ye her yıl yaklaşık olarak 330 bin kişi başvuruda bulunmakta olup bu sayı her yıl artmaktadır. Değerli öğrencilerimiz için DGS hakkında kafalarına takılan önemli konuları derledik.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "Nedir?"),
          buildsubText(
              "Herhangi bir üniversitenin önlisans bölümlerinden mezun olmuş ya da olabilecek durumdaki öğrencilerin katılabildiği, ÖSYM tarafından gerçekleştirilen çoktan seçmeli bir sınavdır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "‘ye KİMLER BAŞVURMALIDIR?"),
          buildsubText(
              "Yükseköğretim lisans programlarına dikey geçiş yapmak isteyenler bu sınava başvurmalıdır.",
              buildTextStyle()),
          buildRowFlexible(s1: "Dgs", s2: "'na KİMLER BAŞVURABİLİR?"),
          buildsubText(
              "Sınava, bir ön lisans programlarından mezun adaylar başvurabilir. Son sınıfta olup da staj dışındaki mezuniyet şartlarını yerine getirmiş olan adaylar da sınava başvurabilir.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "Açık öğretim lisans",
              s2: "programlarına dikey geçiş yapmak isteyenlerin bu sınava başvurmaları gerekir mi?"),
          buildsubText(
              "Evet,Kılavuzda yer alan açık öğretim lisans programlarına dikey geçiş yapmak isteyenlerin bu sınava başvurmaları gerekmektedir.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS", s2: "'ye Yurt dışından başvuru yapılabilir mi?"),
          buildsubText(
              "Evet yapılabilir. Başvuruların yapılacağı tarihler arasında eğitim, tedavi vb. nedenlerle yurt dışında bulunduğu için (KKTC ve Kırgızistan-Bişkek hariç) başvuru merkezine gitmesi mümkün olmayanlar, başvurularını kılavuzda açıklandığı şekilde yapabilirler.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "ÖSYM Aday İşlemleri",
              s2: "Sisteminde mevcut olan geçerli fotoğrafımı nasıl değiştirebilirim?"),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    "ÖSYM Aday İşlemleri Sisteminde mevcut olan geçerli fotoğrafını değiştirmek isteyen adaylar; aşağıdaki belgeler ile sınava başvuru süresince ve sınava başvuru süresi tamamlandıktan sonraki ilk 5 gün içinde ÖSYM’ye başvuruda bulunmalıdır.\n "
                    "a) Genel Amaçlı Dilekçe örneği,\n"
                    "b) Fotoğraflı ve onaylı nüfus cüzdanı sureti,\n"
                    "c) Son 3 ay içerisinde çekilmiş bir adet vesikalık fotoğraf,\n"
                    "d) Fotoğrafını değiştirme talebinin nedenini belirten (varsa) belge",
                    style: buildTextStyle(),
                  ),
                ),
              ],
            ),
          ),
          buildRowFlexible(s1: "DGS", s2: "’DE KAÇ SORU VAR?"),
          buildsubText(
              "DGS 60 matematik ve 60 Türkçe olmak üzere toplam 120 sorudan oluşur.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "SINAVININ KAPSAMI NEDİR?"),
          buildsubText(
              "Sınavda adaylara sayısal ve sözel bölümden oluşan bir yetenek testi uygulanacaktır. Testte 120 soru yer alacaktır. Sınavda uygulanacak test, lisans öğrenimindeki başarıda etkili olan sayısal ve sözel içerikli akıl yürütme (muhakeme) becerilerinin ölçülmesini amaçlamaktadır. Bu amaçla ilgili olarak hazırlanacak sorular, ön lisans programlarında kazanılan bilgi ve becerileri ölçmeye yönelik olmayacaktır. Test soruları, farklı alanlardan gelen yükseköğretim kurumu mezunlarının cevaplayabilecekleri nitelikte olacaktır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’NİN SINAV SÜRESİ NE KADARDIR?"),
          buildsubText("Sınav süresi 150 dakika yani 2 saat 30 dakikadır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’de ÖBP NEDİR?"),
          Padding(
            padding: const EdgeInsets.only(
                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    " DGS’ye başvuran her aday için, bitirme yılı ve diploma notu dikkate alınarak Önlisans Başarı Puanı (ÖBP)olarak adlandırılan bir puan hesaplanır. ÖBP’lerin hesaplandığı dönemde mezun durumda olmayan adaylar için diploma notu yerine not ortalaması kullanılır. Adayların not ortalamaları önce 100’lük sisteme çevrilir. Ardından 0,8 ile çarpılır ve ÖBP puanı elde edilir.\n "
                    "Ön lisans akademik not ortalamaları (en yükseği 100, en düşüğü 50 olarak değerlendirilerek) 0,8 ile çarpılarak Önlisans Başarı Puanına (ÖBP) dönüştürülecektir. Böylece, 50 olan en düşük notun ÖBP değeri 40 olacak, en yüksek 100 olan notun da ÖBP değeri 80 olacaktır. 50’nin altında olan notlar 50 olarak değerlendirmeye alınacaktır. Bu şekilde hesaplanan Önlisans Başarı Puanı merkezî sınavdan alınan puana eklenerek adayın yerleştirme puanı hesaplanacaktır. Bütün not sistemleri doğru orantı kurularak, 100’lü not sistemine dönüştürülecektir.\n\n"
                    "Örnek ÖBP Hesaplaması:\n\n"
                    "Mezuniyet notu 3.80\n\n"
                    "3.80 x 25 = 95 (4’lük sistemi  100 ‘lük sisteme dönüştürme)\n\n"
                    "95 x 0.8 = 76 ÖBP",
                    style: buildTextStyle(),
                  ),
                ),
              ],
            ),
          ),
          buildRowFlexible(s1: "DGS", s2: "PUANI NASIL HESAPLANIR?"),
          buildsubText(
              "Adayların testlerden almış olduğu puanlardan hesaplanan sayısal ve sözel standart puanlar ve ön lisans başarı puanları (ÖBP) kullanılarak adayların yerleştirmede esas alınabilecek DGS puanları hesaplanacaktır.\n\n"
              "DGS puanını oluşturacak olan sayısal ve sözel standart puanlar ile Ön Lisans Başarı Puanının ağırlıklarını belirleyen katsayılar, Tablo-A’da yer almaktadır. Her aday için puanlar, tablodaki katsayılar ile çarpılarak toplanacak ve bulunacak toplam, adayın ilgili DGS puanını oluşturacaktır. Arkadaşlar çok dikkat etmeniz gereken bir husu var ki bu çok önemli !!! Her iki testten de en az 0,5 ham puan alan adayların DGS puanı hesaplanacaktır. Her iki testten de en az 0,5 ham puanı bulunmayan adayların DGS puanı hesaplanmayacaktır. Buna çok dikkat edin. Yani en az bir Sözel ve birde sayısal Netiniz bulunmak zorunda.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’DE AKADEMİK NOT ORTALAMASI NEDİR?"),
          buildsubText(
              "ÖBP hesaplanabilmesi için meslek yüksekokullarındaki tüm son sınıf öğrencilerinin (sınava başvurmayanlar da dahil) akademik not ortalamalarını ÖSYM tarafından MYO öğrenci işlerinden toplanır.  ÖSYM, not ortalamalarını elektronik ortamda en geç Temmuz ayının ikinci haftasında meslek yüksek okullarından toplamaktadır. Mezun olan adaylar da ais.osym.gov.tr sitesinden not ortalamalarını kontrol edebilir. ÖSYM; belirteceği tarihlerde, akademik not ortalamasıyla ilgili düzeltme dilekçelerini kabul eder.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’DE EK PUAN VAR MIDIR?"),
          buildsubText("DGS’de ek puan  uygulaması yoktur.", buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’YE KAÇ KEZ GİRİLEBİLİR?"),
          buildsubText(
              "Sınava girmekle ilgili herhangi bir sınırlama bulunmamaktadır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "KAÇ YIL GEÇERLİDİR?"),
          buildsubText(
              "DGS her yıl ÖSYM tarafından yapılan bir sınavdır. Dolayısıyla bir yıl geçerlidir.\n\n"
              "Katsayılar her yıl sınava giren kişi sayısına göre değiştiği için her sene puan hesaplaması farklı olur.",
              buildTextStyle()),
          buildRowFlexible(
            s1: " DİKEY GEÇİŞ SINAVININ ",
            s2: "AVANTAJLARI NELERDİR?",
          ),
          buildsubText(
              "-DGS, 4 yıllık bir lisans programına yerleşmenin en kısa yoludur.\n\n"
              "-DGS müfredatında yer alan konular, YKS’ye kıyasla daha azdır. Sorumlu olunan dersler sadece Matematik ve Türkçedir.\n\n"
              "-YKS’de genel katılımcılar Fen Lisesi ve Anadolu Lisesi mezunlarından oluşurken, DGS’de katılımcıların büyük bir bölümü meslek lisesi çıkışlıdır.\n\n"
              "-Okul puanı düşük olan bir öğrenci, sınav sistemi sayesinde disiplinli ve programlı bir çalışmayla DGS’de başarılı olabilmektedir.\n\n"
              "-YKS’de her yıl ortalama iki milyon öğrenci sınava girerken; DGS’de bugüne kadar en yüksek katılım 336.000 kişi olarak gerçekleşmiştir.\n\n"
              "-YKS’de kazanma oranı daha düşükken, DGS’de kazanma oranı daha yüksektir.\n"
              "",
              buildTextStyle()),
          buildGestureDetector(
              context,
              "DGS Çıkmış Sorular ve Cevapları - 11 yıllık için tıklayınız",
              cikmisSorular()),
          buildRowFlexible(s1: "DGS", s2: "’NİN DEZAVANTAJI NEDİR?"),
          buildsubText(
              "Sınav süresi 150 dakika yani 2 saat 30 dakikadır.  Sınav süresinin kısa olması öğrencilerinin birçoğunun sınavı tamamlayamamasına sebep olmaktadır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "TERCİH İŞLEMLERİ NE ZAMAN YAPILIR?"),
          buildsubText(
              "Tercih işlemleri sınavdan sonra yapılmaktadır. DGS sonuçları açıklandıktan 4-5 gün sonra tercih işlemleri başlamaktadır. (Ağustos ayının üçüncü haftası gibi)",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’DE TERCİH SAYISI?"),
          buildsubText("ÖSYM adaylara, 30 adet tercih yapma hakkı tanımıştır.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS",
              s2: ",TERCİHLERİMDE İSTEDİĞİM BÖLÜMÜ YAZABİLİR MİYİM”?"),
          buildsubText(
              "Tercihlerinizde sadece mezun olduğunuz bölümle ilgili YÖK tarafından belirlenmiş bölümleri tercih edebilirsiniz.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS",
              s2: "’YE İKİNCİ KEZ GİRMEYİ DÜŞÜNÜYORUM. BİR ÖNCEKİ YIL SINAVI KAZANDIĞIM HALDE, DGS’YE TEKRAR BAŞVURABİLİR MİYİM?  HER- HANGİ BİR PUAN KESİNTİSİ OLUR MU?"),
          buildsubText(
              "Sınavı bir önceki yıl kazanmış olsanız bile sınava girebilirsiniz. Ancak 29.07.2010 YÖK genel kurul  toplantısında; bir  önceki   yıl DGS  sonucunda üniversiteye yerleşen adayların ÖBP’si   0,45  katsayısı ile çarpılmasına  yani ÖBP’de  puan  kesintisine karar  verilmiştir. ÖBP’den  yaklaşık  8-12 puan  arasın- da kesinti olabilmektedir.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS",
              s2: "sonucu ile bir yükseköğretim lisans programına yerleştirildiğimde gelecek yıl puanımda düşme söz konusu olacak mı?"),
          buildsubText(
              "Evet. Örnek : 2018-DGS’de bir yükseköğretim programına yerleştirilen adayların 2019-DGS’de ÖBP’leri 0,45 katsayısı ile çarpılacaktır.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’DE PUANLAMA SİSTEMİ, NASIL?"),
          buildsubText(
              "Puan hesaplamasının ögeleri Matematik net, Türkçe net, taban puan ve ÖBP’dir.\n\n**** Öğrencilerin netleri belirlenirken 4 yanlışın 1 doğruyu yok ettiğini unutmayın.",
              buildTextStyle()),
          buildRowFlexible(s1: "DGS", s2: "’DE EK YERLEŞTİRME YAPILIYOR MU?"),
          buildsubText(
              "Eylül 2009 tarihinden itibaren ÖSYM tarafından Dikey geçiş sınavına giren adaylara ek yerleştirme hakkı sağlamıştır.",
              buildTextStyle()),
          buildRowFlexible(
              s1: " DGS",
              s2: "’DE ÖRGÜN EĞİTİMİ KAZANDIM, AYNI ANDA HEM ÖRGÜN HEM DE AÇIKÖĞRETİM FAKÜLTESİNDE OKUYABİLİR MİYİM?"),
          buildsubText(
              "Hem açıköğretimi hem de örgün eğitimi aynı anda okuyabilir; ikisine de kayıt yaptırabilirsiniz",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS", s2: "’Yİ KAZANDIKTAN SONRA İNTİBAK PROGRAMI NEDİR?"),
          buildsubText(
              "“Lisans  Öğrenimine Hazırlık sınıfı” daha cok bilinen adıyla  intibak sınıfı ,2011 yılında  kaldırılmıştır. Buna göre;  dikey geçiş sınavı ile üniversitelere geçiş yapan öğrenciler, “atılma” kaygısı olmadan okuyabilmekte ve öğrenci statüsünde sayılmaktadırlar.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS",
              s2: "’Yİ KAZANDIKTAN SONRA ÜNİVERSİTEYE KAÇINCI SINIFTAN BAŞLARIM?"),
          buildsubText(
              "DGS’yi kazanan öğrencilerin hangi sınıftan başlayacağını üniversite yönetimi karar vermektedir.Fark derslerinin az olması açısından mezun olunan ön lisans programına en yakın lisans programı seçilmelidir. Üst sınıftan kredi alarak,erken mezun olabilme şansına sahiptir. Bazı üniversiteler DGS’den kazanan öğrencileri üçüncü sınıftan başlatabilmektedir.",
              buildTextStyle()),
          buildRowFlexible(
              s1: "DGS",
              s2: "'DE ÖN LİSANS MEZUNİYET ALANLARINA GÖRE DİKEY GEÇİŞ YAPILABİLECEK LİSANS PROGRAMLARI NELERDİR?"),
          GestureDetector(
            onTap: _launchURL,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                color: kirmizi,
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Ön Lisans Mezuniyet Alanlarına Göre Dikey Geçiş Yapılabilecek Lisans Programları İÇİN TIKLAYINIZ",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ),
              ),
            ),
          ),
          buildRowFlexible(
              s1: "DGS",
              s2: "’Yİ KAZANDIKTAN SONRA ÜNİVERSİTEDE YABANCI DİL HAZIRLIK SINIFI VAR MIDIR?"),
          buildsubText(
              "Yabancı dille eğitim yapılan programlarda öğrencilerin, üniversitede bölüm derslerine başlayabilmeleri için üniversitenin yapacağı yabancı dil muafiyet sınavını geçmeleri veya Yabancı Dil Hazırlık Sınıfı’na devam ederek başarılı olmaları gerekir.Yabancı dil hazırlık programı süresince öğrenci,  ilgili üniversitenin öğretim ve sınav yönetmeliğine tabi olur. Birçok üniversite, hazırlık sınıfında başarısız olan öğrencilere hazırlık sınıfını tekrar etme hakkı tanır veya öğrenci mezun olana kadar dil yeterlilik sınavında başarılı olma şartı arar. Yabancı Dil Hazırlık Sınıfı’nda başarısız olarak ilişiği kesilen öğrenciler, ÖSYM tarafından Türkçe eğitim yapan yükseköğretim programlarına yerleştirilirler.",
              buildTextStyle()),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(
      BuildContext context, String s1, var s2) {
    return GestureDetector(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            color: kirmizi,
            height: 45,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "$s1",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    s2), //Constructor içerisinde veriyi gönderdik
          );
        });
  }

  Row buildRowFlexible({String s1, String s2}) {
    return Row(
      children: <Widget>[
        Icon(Icons.arrow_forward),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                new TextSpan(
                    text: '$s1 ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold)),
                new TextSpan(
                    text: '$s2',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding buildsubText(String subText, TextStyle ts) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
      child: Container(
        child: Text(
          "$subText",
          style: ts,
        ),
      ),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(fontSize: 10.0, fontFamily: 'Montserrat');
  }

  _launchURL() async {
    const url =
        'https://dokuman.osym.gov.tr/pdfdokuman/2018/DGS/TERCIH/TABLO2_06092018.pdf';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
