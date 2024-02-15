import 'package:flutter/material.dart';
import 'onbodring2.dart';

class Onboadringpage1 extends StatefulWidget {
  const Onboadringpage1({Key? key}) : super(key: key);

  @override
  State<Onboadringpage1> createState() => _Onboadringpage1State();
}

class _Onboadringpage1State extends State<Onboadringpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/img_15.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/img_3.png', // Updated image asset path
                width: 300, // Adjust width as needed
                height: 450, // Adjust height as needed
                // You can add more properties like fit, alignment, etc. here
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Buyer & Seller agree to',
                      style: TextStyle(fontSize: 20, color: Color(0xff323C5F)),
                      textAlign: TextAlign.center, // Align center
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: 'terms', // Set the color to black
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: ' submits payment', // Set the color to blue
                            style: TextStyle(color: Color(0xff3865FF)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'to Yakeen Kar',
                      style: TextStyle(fontSize: 20, color: Color(0xff323C5F)),
                      textAlign: TextAlign.center, // Align center
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'images/img_2.png',
                  height: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(

                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnboardingPage2()),
                        );
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        child: Center(
                          child: Text(
                            'Skip',
                            style: TextStyle(color: Color(0xff3865FF)),
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff3865FF),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Container(
                      height: 30,
                      width: 70,
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 20, color: Color(0xffFFDE33)),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff3865FF),
                        border: Border.all(color: Color(0xff3865FF)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
