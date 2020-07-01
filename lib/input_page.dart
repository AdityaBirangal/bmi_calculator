import 'package:bmi_calculator/about.dart';
import 'package:bmi_calculator/aditya_birangal.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'brain.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

enum sex {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  sex selectedSex;
  int myHeight = 180;
  int myWeight = 50;
  int myAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Container(
            color: Color(0xFF111328),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Image.asset(
                          'images/Logo.png',
                          height: 90,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BMI \nCalculator',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF111328),
                  ),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 25,
                      ),
                      Container(width: 10),
                      Text(
                        'Aditya Birangal',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdityaBirangal()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 25,
                      ),
                      Container(width: 10),
                      Text(
                        'About',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()));
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 25,
                      ),
                      Container(width: 10),
                      Text(
                        'Share App',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('Share Presses');
                    Share.share(
                        'Hey,\nI am Using Very Awesome App to Calculate BMI\n\nDownload Now :\nhttps://birangal.com/BMI');
                  },
                ),
                ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 25,
                        ),
                        Container(width: 10),
                        Text(
                          'Like it? Rate Us.',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    onTap: () {
                      launch(
                          'https://play.google.com/store/apps/details?id=com.birangal.bmi_calculator');
                    }),
                ListTile(
                    title: Row(
                      children: <Widget>[
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 25,
                        ),
                        Container(width: 10),
                        Text(
                          'Contact Us',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    onTap: () {
                      launch(
                          'mailto:developer@birangal.com?Subject=BMI%20Calculator&body=BMI%20Calculator%20By%20Aditya%20Birangal%0D%0AConnected%20Through%20App%20Contact%20Us%0D%0A(Please%20write%20below%20this%20line)%0D%0A---------------------------------------------------');
                    }),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                print('Share Presses');
                Share.share(
                    'Hey,\nI am Using Very Awesome App to Calculate BMI\n\nDownload Now :\nhttps://birangal.com/BMI');
              },
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          print('Male Pressed');
                          selectedSex = sex.male;
                        });
                      },
                      myChild: IconContent(
                        myIcon: FontAwesomeIcons.mars,
                        gender: 'MALE',
                      ),
                      myColor: selectedSex == sex.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          print('Female Pressed');
                          selectedSex = sex.female;
                        });
                      },
                      myChild: IconContent(
                        myIcon: FontAwesomeIcons.venus,
                        gender: 'FEMALE',
                      ),
                      myColor: selectedSex == sex.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                myChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kMyTextStyle,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            myHeight.toString(),
                            style: kBigTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kMyTextStyle,
                          ),
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: myHeight.toDouble(),
                          min: 50,
                          max: 200,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8DE98),
                          onChanged: (newValue) {
                            print(newValue);
                            myHeight = newValue.toInt();
                            setState(() {});
                          }),
                    )
                  ],
                ),
                myColor: kActiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      myColor: kActiveCardColor,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kMyTextStyle,
                          ),
                          Text(
                            myWeight.toString(),
                            style: kBigTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    print('Weight decreased');
                                    if (myWeight > 0) {
                                      myWeight--;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 20),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    print('Weight increased');
                                    myWeight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      myColor: kActiveCardColor,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kMyTextStyle,
                          ),
                          Text(
                            myAge.toString(),
                            style: kBigTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    print('Age decreased');
                                    if (myAge > 0) {
                                      myAge--;
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 20),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    print('Age increased');
                                    myAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              child: Text(
                '©️ Aditya Birangal',
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdityaBirangal()));
              },
            ),
            BottomButton(
              onTap: () {
                Brain myBrain = Brain(height: myHeight, weight: myWeight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmi: myBrain.getBMI(),
                              result: myBrain.getResult(),
                              solution: myBrain.getSolution(),
                            )));
              },
              buttonText: 'CALCULATE',
            ),
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
