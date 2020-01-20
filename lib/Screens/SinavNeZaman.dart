import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SinavNeZaman extends StatefulWidget {
  @override
  _SinavNeZamanState createState() => _SinavNeZamanState();
}

class _SinavNeZamanState extends State<SinavNeZaman> {
  int estimateTs = DateTime(2020, 06, 21, 10, 15, 00).millisecondsSinceEpoch;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DGS 2020 - KAÇ GÜN KALDI ?",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Dikey Geçiş Sınavı",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            new TextSpan(
                                text: 'Tahmini Sınav Tarihi: ',
                                style: new TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15.0)),
                            new TextSpan(
                                text: '21 Haziran 2020',
                                style: TextStyle(color: Colors.red)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Aşağıdaki sayaç DGS 2020 sınavına tahmini ne kadar zaman kaldığını göstermektedir. ÖSYM'nin resmi açıklamasından sonra sayaç güncellenecektir.",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Adaylar, saat 10.00’dan sonra sınav binalarına alınmayacaklardır.",
                          style: TextStyle(
                              fontSize: 11.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: StreamBuilder(
                stream: Stream.periodic(Duration(seconds: 1), (i) => i),
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  DateFormat format1 = DateFormat("mm");
                  DateFormat format = DateFormat("ss");
                  int now = DateTime.now().millisecondsSinceEpoch;
                  Duration remaining = Duration(milliseconds: estimateTs - now);
                  var dateString =
                      '${remaining.inDays}:${remaining.inHours - 342 * 24}:${format.format(DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}';
                  return Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Color(0xFFFD7465),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "GÜN",
                                  style: buildTextStyle(),
                                ),
                                Text(
                                  "${remaining.inDays}",
                                  style: buildTextStyle(),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Color(0xFFFD7465),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "SAAT",
                                  style: buildTextStyle(),
                                ),
                                Text(
                                  "${remaining.inHours % 24}",
                                  style: buildTextStyle(),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Color(0xFFFD7465),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "DAKİKA",
                                  style: buildTextStyle(),
                                ),
                                Text(
                                  "${format1.format(DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}",
                                  style: buildTextStyle(),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Color(0xFFFD7465),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "SANIYE",
                                  style: buildTextStyle(),
                                ),
                                Text(
                                  "${format.format(DateTime.fromMillisecondsSinceEpoch(remaining.inMilliseconds))}",
                                  style: buildTextStyle(),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
        ),
      ],
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(
        fontSize: 11.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.white);
  }
}
