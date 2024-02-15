import 'package:flutter/material.dart';

import '../Screen/verifymobilenumber2.dart';
import '../pages/verify_email.dart';
import 'forgotpassword.dart';

class VerifyMobileNumber2 extends StatefulWidget {
  const VerifyMobileNumber2({Key? key}) : super(key: key);

  @override
  _VerifyMobileNumber2State createState() =>
      _VerifyMobileNumber2State();
}

class _VerifyMobileNumber2State extends State<VerifyMobileNumber2> {
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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextScreen()),
      );
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

    body: Stack(
    children: [

    Positioned(
    top: 20, // Adjust the position of the upper image
    left: 0,
    right: 0,
    child: Column(
    children: [
    Image.asset(
    'images/img_42.png', // Upper image
    height: 300,
      width: 500,// Adjust height as needed
    ),
    SizedBox(height: 20), // Add space between image and text
    Text(
    'Verified successfully! 😀',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 10), // Add space between the two texts
    Center(
    child: Padding(
    padding: const EdgeInsets.only(left: 20,right: 20),
    child: Text(
                'We have verified your contact details. Dont forget to verify your ID before making a deal.',
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
    suffixIcon: Image.asset("images/img_41.png",height: 5, ), // Via Email icon

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
    suffixIcon: Image.asset("images/img_41.png",height: 5, ), // Via Email icon
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
        },
        child: BottomAppBar(
          color: Color(0xff3865FF),
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Text(
                'GO TO HOme',
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


void main() {
  runApp(MaterialApp(
    home: VerifyMobileNumberScreen(),
  ));
}
