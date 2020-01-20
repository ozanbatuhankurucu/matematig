import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/DgsNedir.dart';
import 'Screens/Kontenjan.dart';
import 'Screens/ObpHesapla.dart';
import 'Screens/PuanHesapla.dart';
import 'Screens/SinavNeZaman.dart';
import 'Screens/tercihMotoru.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'matematig',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {


  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFFD7465),
        centerTitle: true,
        title: Text(
          "matematig",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Monserrat',
              color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFF9EFEB),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * (1.5 / 20),
              child: TabBar(
                controller: tabController,
                indicatorColor: Color(0xFFFE8A7E),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 4.0,
                isScrollable: true,
                labelColor: Color(0xFF440206),
                unselectedLabelColor: Color(0xFF440206),
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Tercih Robotu',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Puan Hesapla',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Obp Hesapla',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Kontenjanlar',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sınav Ne Zaman?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'DGS Nedir?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * (15.9 / 20),
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                new tercihMotoru(),
                new PuanHesapla(),
                new ObpHesapla(),
                new Kontenjan(),
                new SinavNeZaman(),
                new DgsNedir(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

