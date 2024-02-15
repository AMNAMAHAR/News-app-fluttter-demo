import 'package:flutter/material.dart';

import 'notification.dart';

class Modifydealdone2 extends StatefulWidget {
  const Modifydealdone2({Key? key});

  @override
  State<Modifydealdone2> createState() => _Modifydealdone2State();
}

class _Modifydealdone2State extends State<Modifydealdone2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('images/img_37.png', height: 15, color: Color(0xff797B89)),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8, // Set width to 80% of screen width
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('images/img_39.png'), // Adjust path as per your actual image location
                SizedBox(height: 20), // Add spacing between image and text
                Text(
                  'Deal Modified',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  'Successfully',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                SizedBox(height: 20), // Add spacing between texts
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your deal has been modified successfully!\n',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Share this code with your buyer.',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Add spacing between texts
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(width: 2, color: Color(0xffEAF1FF)),
                  ),
                  color: Color(0xffFFFFFF), // White background color
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'YKTN',
                          style: TextStyle(fontSize: 20, color: Color(0xff323C5F)),
                        ),
                        SizedBox(width: 5), // Add spacing between text and border
                        Container(
                          height: 50,
                          color: Color(0xff9EB3FB4D), // Blue border color
                        ),
                        SizedBox(width: 5), // Add spacing between border and text
                        Text(
                          '#32rewtt43tregb',
                          style: TextStyle(fontSize: 10, color: Color(0xff3865FF)),
                        ),
                        SizedBox(width: 5), // Add spacing between text and action image
                        Image.asset('images/img_40.png', height: 18), // Action image
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20), // Add spacing between texts
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(),));
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(width: 2, color: Color(0xff3865FF)),
                      ),
                      color: Color(0xff3865FF), // Blue background color
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Copy YKTN',
                              style: TextStyle(fontSize: 20, color: Color(0xffFFDE33)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
