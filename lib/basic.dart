import 'package:flutter/material.dart';

class BasicFormulas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Basic Trigonometry',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFF55D3C1),
              elevation: 15.0,
              child: Container(
                height: 200.0,
                width: 350.0,
                child: Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/table.png')),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFF55D3C1),
              elevation: 15.0,
              child: Container(
                  height: 200.0,
                  width: 350.0,
                  child: Image.asset('assets/images/sectors.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(
                0xFF55D3C1,
              ),
              elevation: 15.0,
              child: Container(
                height: 200.0,
                width: 350.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContentText(
                      content: 'Sin\u00B2θ + Cos\u00B2θ = 1',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ContentText(
                      content: '1 + Tan\u00B2θ = Sec\u00B2θ',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ContentText(
                      content: '1 + Cot\u00B2θ = Cosec\u00B2θ',
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFF55D3C1),
              elevation: 15.0,
              child: Container(
                height: 200.0,
                width: 350.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContentText(
                      content: 'Sin(π/2 - θ) = Cos(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Cos(π/2 - θ) = Sin(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Tan(π/2 - θ) = Cot(θ)',
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFF55D3C1),
              elevation: 15.0,
              child: Container(
                height: 200.0,
                width: 350.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContentText(
                      content: 'Sin(π - θ) = Sin(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Cos(π - θ) = - Cos(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Tan(π - θ) = - Tan(θ)',
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color(0xFF55D3C1),
              elevation: 15.0,
              child: Container(
                height: 200.0,
                width: 350.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContentText(
                      content: 'Sin( - θ) = - Sin(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Cos( - θ) = Cos(θ)',
                      size: 18.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ContentText(
                      content: 'Tan( - θ) = - Tan(θ)',
                      size: 18.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}

class ContentText extends StatelessWidget {
  final String content;
  final double size;

  const ContentText({@required this.content, this.size});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      content,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: size, fontFamily: 'Ubuntu'),
    );
  }
}
