import 'package:flutter/material.dart';

import '../Screen/verifyemail.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({Key? key}) : super(key: key);

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
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
      // // Here you can navigate to the next screen
      // // Navigator.pushReplacement(
      // //   context,
      // //   MaterialPageRoute(builder: (context) => NextScreen()),
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
          child: InkWell(
            onTap: () {
              // Navigate to the VerifyEmail screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VerifyEmail()),
              );
            },
            child: Icon(Icons.arrow_back),
          ),
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
                'Recovery code 🚨',
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
                  'The recovery code was sent to your mobile. Code expiration time is 120s. Please enter the code:',
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
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    controller: _codeController,
                    decoration: InputDecoration(
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
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC9D3F5)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyEmail(),));
              },
              child: Text(
                'SEND AGAIN',
                style: TextStyle(color: Color(0xffFFDE33)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: RecoveryCode(),
  ));
}
