import 'package:flutter/material.dart';

import 'recoverycode.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
              ),
              child: Image.asset('images/img_25.png', height: 20)),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 320,
            child: Image.asset(
              'images/img_33.png', // Background image
              height: 600,
              width: 600,
            ),
          ),
          Positioned(
            top: 50, // Adjust the position of the upper image
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  'images/img_32.png', // Upper image
                  height: 200, // Adjust height as needed
                ),
                SizedBox(height: 20), // Add space between image and text
                Text(
                  'Recover Your Password! 🧐',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10), // Add space between the two texts
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Select mobile number or email to verify by sending code:',
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
                            labelText: 'Via SMS:\n********61',
                            suffixIcon: Image.asset("images/img_28.png",height: 15, ), // Via Email icon

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
                            suffixIcon: Image.asset("images/img_28.png",height: 15, ), // Via Email icon
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => RecoveryCode(),));
        },
        child: BottomAppBar(
          color: Color(0xff3865FF),
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Text(
                'NEXT',
                style: TextStyle(color: Color(0xffFFDE33)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
