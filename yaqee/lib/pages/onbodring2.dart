import 'package:flutter/material.dart';

import 'onboarding3.dart';

class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({Key? key});

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
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
                'images/img_14.png', // assuming img_1.png is in the assets folder
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
                    color: Colors.black, // Default text color
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'Seller ', // "Seller " in default color
                    ),
                    TextSpan(
                      text: 'delivers', // "delivers" in blue color
                      style: TextStyle(
                        color: Color(0xff3865FF), // Blue color
                        fontSize: 16,
                      ),
                    ),
                    TextSpan(
                      text: ' the goods', // "the goods" in default color
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black, // Default text color
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'to the buyer and ', // "to the buyer and " in default color
                    ),
                    TextSpan(
                      text: 'approves', // "approves" in blue color
                      style: TextStyle(
                        color: Color(0xff3865FF), // Blue color
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black, // Default text color
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'products.', // "products." in default color
                      style: TextStyle(color: Color(0xff3865FF)),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/img_16.png', // Image asset path
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
                // You can add more properties like fit, alignment, etc. here
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingPage3(),));
                  },
                  child: Image.asset(
                    'images/img_17.png', // Image asset path
                    width: 200, // Adjust width as needed
                    height: 50, // Adjust height as needed
                    // You can add more properties like fit, alignment, etc. here
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
