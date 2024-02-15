import 'package:flutter/material.dart';

import '../createpassword.dart';

class MatchedRecoverycode extends StatefulWidget {
  const MatchedRecoverycode({super.key});

  @override
  State<MatchedRecoverycode> createState() => _MatchedRecoverycodeState();
}

class _MatchedRecoverycodeState extends State<MatchedRecoverycode> {
  late TextEditingController _codeController;
  bool _isButtonEnabled = false; // Track if the VERIFY button should be enabled

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController();
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  void _verifyCode(BuildContext context) {
    String enteredCode = _codeController.text;
    // Validate the code and proceed accordingly
    if (enteredCode == '1234') {
      // Code is correct, navigate to the next screen
      print('Verification successful');
      // Here you can navigate to the next screen
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => NextScreen()),
      // );
    } else {
      // Code is incorrect, show an error message
      print('Verification failed');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid verification code. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _sendCodeAgain() {
    // Implement code to send verification code again
    print('Sending verification code again...');
    // Add your code logic here

    // Clear the text field when sending code again
    _codeController.clear();
    setState(() {
      _isButtonEnabled = false; // Disable the button after clearing the text field
    });
  }

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'code Matched! 👍',
                style: TextStyle(
                  color: Color(0xff323C5F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'The recovery code is match. Please proceed to set your new password.',
                  style: TextStyle(fontSize: 13, color: Color(0xffA8ACB4)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    controller: _codeController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,

                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _isButtonEnabled = value.isNotEmpty; // Enable button if text field is not empty
                      });
                    },
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 70,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePassword(),));
        },
        child: BottomAppBar(
          color: Color(0xff3865FF),
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // TextButton(
              //   onPressed:
              //   _isButtonEnabled ? () => _verifyCode(context) : null, // Verify code on press if button is enabled
              //   child: Text(
              //     'VERIFY',
              //     style: TextStyle(color: Color(0xffFFDE33)),
              //   ),
              // ),
              Text(
                'DONE',
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

