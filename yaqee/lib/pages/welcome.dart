import 'package:flutter/material.dart';

import 'page1.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Light blue background
          Container(
            color: Colors.lightBlueAccent,
            width: double.infinity,
            height: double.infinity,
          ),
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/img_6.png'), // assuming img_6.png is in the assets folder
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Upper image
          Positioned(
            top: 280, // adjust this value to position the image vertically
            left: 0, // adjust this value to position the image horizontally
            right: 0,
            child: Center(
              child: Image.asset(
                'images/img_7.png', // assuming img_7.png is in the assets folder
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
              ),
            ),
          ),
          // SizedBox with position
          Positioned(
            top: 500, // Adjust this value to position the SizedBox vertically
            left: 0, // Adjust this value to position the SizedBox horizontally
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Onboadringpage1 (),));
                },
                child: SizedBox(
                  height: 80,
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent, // Set light blue color here
                      border: Border.all(color: Colors.lightBlueAccent),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/img_8.png', // assuming img_8.png is in the assets folder
                          width: 50, // Adjust width as needed
                          height: 50, // Adjust height as needed
                        ),
                        Text(
                          'Register with Govt. of Pakistan',
                          style: TextStyle(
                            color: Color(0xFFFFDE33), // Text color
                          ),
                        ),
                        SizedBox(width: 10), // Add spacing between text and image
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // End image
          // Positioned(
          //   bottom: 2,
          //   left: 0,
          //   right: 0,
          //   child: Image.asset('images/img_9.png', height: 50, width: 50),
          // ),
        ],
      ),
    );
  }
}
