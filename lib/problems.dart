import 'package:al_maths/basic.dart';
import 'package:flutter/material.dart';

class Problems extends StatefulWidget {
  @override
  _ProblemsState createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Color(0xFF55D3C1),
      child: ListView(
        children: [
          Expanded(
            child: Theme(
              data: ThemeData(
                colorScheme: ColorScheme.light(primary: Colors.red),
                primaryColor: Color(0xFF55D3C1),
                accentColor: Color(0xFF55D3C1),
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepContinue: () {
                  if (_currentStep >= 1) return;
                  setState(() {
                    _currentStep += 1;
                  });
                },
                onStepCancel: () {
                  if (_currentStep <= 0) return;
                  setState(() {
                    _currentStep -= 1;
                  });
                },
                steps: <Step>[
                  Step(
                      isActive: _currentStep == 0 ? true : false,
                      title: Text('බව පෙන්වන්න'),
                      content: Container(
                        height: 350.0,
                        width: 350.0,
                        child: Card(
                            child: ListView(
                          children: [
                            QuestionPicCard(
                              img: 'que1',
                              size: 35.0,
                              myAns: 'ans1',
                            ),
                            QuestionPicCard(
                              img: 'que2',
                              size: 35.0,
                              myAns: 'ans2',
                            ),
                            QuestionPicCard(
                              img: 'que3',
                              size: 35.0,
                              myAns: 'ans3',
                            ),
                            QuestionPicCard(
                              img: 'que4',
                              size: 38.0,
                              myAns: 'ans4',
                            ),
                            QuestionPicCard(
                              img: 'que5',
                              size: 32.0,
                              myAns: 'ans5',
                            ),
                            QuestionPicCard(
                              img: 'que6',
                              size: 35.0,
                              myAns: 'ans6',
                            ),
                          ],
                        )),
                      )),
                  Step(
                      isActive: _currentStep == 1 ? true : false,
                      title: Text('බව පෙන්වන්න'),
                      content: Container(
                        height: 350.0,
                        width: 350.0,
                        child: Card(
                            child: ListView(
                          children: [
                            QuestionPicCard(
                              img: 'que7',
                              size: 45.0,
                              myAns: 'ans7',
                            ),
                            QuestionPicCard(
                              img: 'que8',
                              size: 20.0,
                              myAns: 'ans8',
                            ),
                            QuestionPicCard(
                              img: 'que3',
                              size: 35.0,
                              myAns: 'ans3',
                            ),
                            QuestionPicCard(
                              img: 'que4',
                              size: 38.0,
                              myAns: 'ans4',
                            ),
                            QuestionPicCard(
                              img: 'que5',
                              size: 32.0,
                              myAns: 'ans5',
                            ),
                            QuestionPicCard(
                              img: 'que6',
                              size: 35.0,
                              myAns: 'ans6',
                            ),
                          ],
                        )),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final String que;
  final IconData icon;
  final AssetImage image;
  final String myAns;

  QuestionCard(
      {@required this.que, @required this.icon, this.image, this.myAns});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(que),
      trailing: IconButton(
        icon: Icon(icon),
        onPressed: () {
          showAnswer(context: context, myAns: myAns);
        },
      ),
    );
  }
}

class QuestionPicCard extends StatelessWidget {
  final String img;
  final double size;
  final String myAns;
  QuestionPicCard({@required this.img, this.size, @required this.myAns});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: size,
        width: 300.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/$img.png'),
            IconButton(
                icon: Icon(
                  Icons.question_answer,
                  size: 18.0,
                ),
                onPressed: () {
                  showAnswer(context: context, myAns: myAns);
                })
          ],
        ),
      ),
    );
  }
}

void showAnswer({BuildContext context, String myAns}) {
  showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          children: [
            SimpleDialogOption(
                child: Image.asset('assets/images/answers/$myAns.png'))
          ],
        );
      });
}
