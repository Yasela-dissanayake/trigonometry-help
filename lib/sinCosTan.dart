import 'package:al_maths/basic.dart';
import 'package:flutter/material.dart';

class SinCosTan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          // Color(0xFF55D3C1),
          title: Text(
            'Sin, Cos and Tan',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Color(0xFF55D3C1),
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'sin',
              ),
              Tab(
                text: 'cos',
              ),
              Tab(
                text: 'tan',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Card(
              child: ListView(
                children: [
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: 'Sin(A+B) = Sin(A)Cos(B) + Cos(A)Sin(B)',
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ContentText(
                            content: 'Sin(A-B) = Sin(A)Cos(B) - Cos(A)Sin(B)',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/sin.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: ' 2Sin(A)Cos(B) = Sin(A+B) + Sin(A-B)',
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ContentText(
                            content: '2Cos(A)Sin(B) = Sin(A-B) - Sin(A-B)',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/sin2.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: 'Sin(3Ѳ) = 3Sin(Ѳ)-4sin\u00B3(Ѳ)',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
            Card(
              child: ListView(
                children: [
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: 'Cos(A+B) = Cos(A)Cos(B) - Sin(A)Sin(B)',
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ContentText(
                            content: 'Cos(A-B) = Cos(A)Cos(B) + Sin(A)Sin(B)',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/cos.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: ' 2Cos(A)Cos(B) = Cos(A+B) + Cos(A-B)',
                            size: 20.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          ContentText(
                            content: '2Sin(A)Sin(B) =  -[Cos(A+B) - Cos(A-B)]',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/cos2.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ContentText(
                            content: 'Cos(3Ѳ) = 4Cos\u00B3(Ѳ)-3Cos(Ѳ)',
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
            Card(
              child: ListView(
                children: [
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/tan.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/tan2.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Card(
                    color: Color(0xFF55D3C1),
                    elevation: 15.0,
                    child: Container(
                      height: 200.0,
                      width: 350.0,
                      child: Image.asset('assets/images/tan3.png'),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
