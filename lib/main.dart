import 'package:al_maths/homePage.dart';
import 'package:al_maths/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mathematics',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

Widget appBar() {
  return SizedBox(
    height: AppBar().preferredSize.height,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 8),
          child: Container(
            width: AppBar().preferredSize.height - 8,
            height: AppBar().preferredSize.height - 8,
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Trigonometry',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red.withOpacity(1.0),
            Colors.blue.withOpacity(1.0),
          ],
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/wall1.png'),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                appBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCicularCard(),
                    MyCicularCard(),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCicularCard(),
                    MyCicularCard(),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCicularCard(),
                    MyCicularCard(),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class MyCicularCard extends StatelessWidget {
  const MyCicularCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100.0),
      onTap: () {},
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        shadowColor: Colors.blue,
        color: Colors.transparent,
        elevation: 15.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: LinearGradient(
              colors: [
                // Color(0xFF9E9E9E),
                // Color(0xFF455A64),
                Color(0x550097A7),
                Color(0xFF00BCD4)
              ],
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
            ),
          ),
          height: 150.0,
          width: 150.0,
          child: Center(child: Text('ත්‍රිකෝණමිතිය')),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Function onTap;
  final String title;

  MyCard({@required this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.deepPurple[300],
        ),
        height: 160.0,
        width: 160.0,
      ),
    );
  }
}
