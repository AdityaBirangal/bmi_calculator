import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class AdityaBirangal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 100, backgroundImage: AssetImage('images/Adi.png')),
            SizedBox(height: 15),
            Text(
              'Aditya Birangal',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'LOVER OF TECHNOLOGY',
              style: TextStyle(
                letterSpacing: 2,
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            GestureDetector(
              onTap: () {
                launch('https://birangal.com');
              },
              child: Card(
                color: kActiveCardColor,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.public,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Birangal.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SourceSansPro',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                launch(
                    'mailto:aditya@birangal.com?Subject=BMI%20Calculator&body=Connected%20Through%20BMI%20Calculator%20App%20Contact%20Us%0D%0A(Please%20write%20below%20this%20line)%0D%0A---------------------------------------------------');
              },
              child: Card(
                color: kActiveCardColor,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'aditya@birangal.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SourceSansPro',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialMediaButton.instagram(
                    url: 'https://www.instagram.com/aditya.birangal/',
                    color: Colors.white,
                    size: 50,
                  ),
                  SocialMediaButton.linkedin(
                    url: 'https://www.linkedin.com/in/adityabirangal/',
                    color: Colors.white,
                    size: 50,
                  ),
                  SocialMediaButton.github(
                    url: 'https://github.com/AdityaBirangal',
                    color: Colors.white,
                    size: 50,
                  ),
                  SocialMediaButton.twitter(
                    url: 'https://twitter.com/AdityaBirangal',
                    color: Colors.white,
                    size: 50,
                  ),
                  SocialMediaButton.whatsapp(
                    url:
                        'https://wa.me/919890082434/?text=BMI%20Calculator%0A(Write below this)%0A------------------%0A',
                    color: Colors.white,
                    size: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
