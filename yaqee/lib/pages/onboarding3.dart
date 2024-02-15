import 'package:flutter/material.dart';

import '../Screen/Login.dart';
import 'forgotpassword.dart';

class OnboardingPage3 extends StatefulWidget {
  const OnboardingPage3({Key? key}) : super(key: key);

  @override
  State<OnboardingPage3> createState() => _OnboardingPage3State();
}

class _OnboardingPage3State extends State<OnboardingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/img_15.png', // Background image asset path
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/img_18.png', // assuming img_1.png is in the assets folder
                width: 300, // Adjust width as needed
                height: 400, // Adjust height as needed
                // You can add more properties like fit, alignment, etc. here
              ),
              SizedBox(
                height: 50,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xff323C5F), // Default text color
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Yakeen Kar ', // "Seller " in default color
                    ),
                    TextSpan(
                      text: 'releases', // "delivers" in blue color
                      style: TextStyle(
                        color: Color(0xff3865FF), // Blue color
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Color((0xff3865FF)), // Default text color
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Payment ', // "to the buyer and " in default color
                    ),
                    TextSpan(
                      text: 'to Seller', // "approves" in blue color
                      style: TextStyle(
                        color: Color(0xff323C5F), // Blue color
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                'images/img_19.png', // Image asset path
                width: 200, // Adjust width as needed
                height: 100, // Adjust height as needed
                // You can add more properties like fit, alignment, etc. here
              ),
              SizedBox(height: 5,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  Login(),));
                },
                child: Image.asset(
                  'images/img_22.png', // Image asset path
                  width: 200, // Adjust width as needed
                  height: 50, // Adjust height as needed
                  // You can add more properties like fit, alignment, etc. here
                ),
              ),

              Image.asset(
                'images/img_21.png', // Image asset path
                width: 200, // Adjust width as needed
                height: 50, // Adjust height as needed
                // You can add more properties like fit, alignment, etc. here
              ),
            ],
          ),
        ],
      ),
    );
  }
}
