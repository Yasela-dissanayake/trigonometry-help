import 'package:al_maths/basic.dart';
import 'package:al_maths/graphs.dart';
import 'package:al_maths/problems.dart';
import 'package:al_maths/sinCosTan.dart';
import 'package:al_maths/splash.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/wall1.png'),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      // Color(0xFF55D3C1),
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            isSwitched ? 'සිංහල' : 'English',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              inactiveTrackColor: Color(0xFF55D3C1),
                              activeTrackColor: Colors.redAccent,
                              activeColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              isSwitched ? "Trigonometry" : "ත්‍රිකෝණමිතිය",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ubuntu'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  isSwitched ? "Let's start with basics" : '',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            MyCard(
              cardTitle1:
                  isSwitched ? 'Basic Trigonometry' : 'මූලික ත්‍රිකෝණමිතිය',
              imageName1: 'basic',
              cardTitle2: isSwitched
                  ? 'sin, cos and tan Formulas'
                  : 'sin, cos හා tan සූත්‍ර',
              imageName2: 'math',
              page1: BasicFormulas(),
              page2: SinCosTan(),
            ),
            MyCard(
              cardTitle1: isSwitched
                  ? 'Trigonometric Graphs'
                  : 'ත්‍රිකෝණමිතික ප්‍රස්ථාර',
              imageName1: 'graphs',
              cardTitle2: isSwitched ? 'Problems' : 'ගැටළු',
              imageName2: 'problems',
              page1: Graphs(),
              page2: Problems(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imageName1;
  final String cardTitle1;
  final String imageName2;
  final String cardTitle2;
  final Widget page1;
  final Widget page2;

  const MyCard({
    @required this.imageName1,
    @required this.cardTitle1,
    @required this.imageName2,
    @required this.cardTitle2,
    @required this.page1,
    @required this.page2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            height: 210.0,
            width: 160.0,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return page1;
                }));
              },
              child: Card(
                color: Color(0xFF55D3C1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Image.asset('assets/images/$imageName1.png'),
                    Text(
                      cardTitle1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        fontFamily: 'Ubuntu',
                      ),
                    )
                  ],
                ),
                elevation: 10.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            height: 210.0,
            width: 160.0,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return page2;
                  }),
                );
              },
              child: Card(
                color: Color(0xFF55D3C1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Image.asset('assets/images/$imageName2.png'),
                    Text(
                      cardTitle2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          fontFamily: 'Ubuntu'),
                    )
                  ],
                ),
                elevation: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
