import 'package:flutter/material.dart';

import 'Screen/verifymobilenumber2.dart';

class Verifiedmobilenumber1 extends StatefulWidget {
  const Verifiedmobilenumber1({Key? key}) : super(key: key);

  @override
  State<Verifiedmobilenumber1> createState() => _Verifiedmobilenumber1State();
}

class _Verifiedmobilenumber1State extends State<Verifiedmobilenumber1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyMobileNumberScreen (),));
            },
            child: Container(
              height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: Image.asset('images/img_25.png', height: 15)),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20), // Add space between image and text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Verify contact details! 🧐',
              style: TextStyle(
                color: Color(0xff323C5F),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10), // Add space between the two texts
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Select a mobile number or an email address to verify your contact information by sending a verification code:',
                style: TextStyle(fontSize: 13, color: Color(0xffA8ACB4)),
              ),
            ),
          ),
          SizedBox(height: 20), // Add space below the text
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/img_27.png', height: 20), // Via SMS icon
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Via SMS:\n*** *******61',
                      suffixIcon: Image.asset(
                        "images/img_28.png",
                        height: 5,width: 5,
                      ), // Via Email icon
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add space below the TextFormField
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/img_29.png', height: 20), // Via SMS icon
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Via Email:\n****ic16@gmail.com',
                      suffixIcon: Image.asset(
                        "images/img_28.png",
                        height: 5,width: 5,
                      ), // Via Email icon
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
