import 'package:al_maths/basic.dart';
import 'package:flutter/material.dart';

class Graphs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Trigonometric Graphs',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0),
            child: ContentText(content: 'y = Sin(x)', size: 20.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 15.0,
              child: Container(
                color: Color(0xFF55D3C1),
                height: 300.0,
                width: 350.0,
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/sin graph.png')),
              ),
            ),
          ),
          Divider(
            indent: 80.0,
            thickness: 2.2,
            endIndent: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0),
            child: ContentText(content: 'y = Cos(x)', size: 20.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 15.0,
              child: Container(
                  color: Color(0xFF55D3C1),
                  height: 300.0,
                  width: 350.0,
                  child: Image.asset('assets/images/cos graph.png')),
            ),
          ),
          Divider(
            indent: 80.0,
            thickness: 2.2,
            endIndent: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 15.0),
            child: ContentText(content: 'y = Tan(x)', size: 20.0),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 15.0,
              child: Container(
                  color: Color(0xFF55D3C1),
                  height: 300.0,
                  width: 350.0,
                  child: Image.asset('assets/images/tan graph.png')),
            ),
          ),
        ],
      ),
    );
  }
}
