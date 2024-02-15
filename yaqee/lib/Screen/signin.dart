import 'package:flutter/material.dart';

import '../verify mobile number1.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(234),
        child: Container(
          height: 234,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff194AF0),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/img_40.png', // Image path
                height: 200, // Desired height
                width: 200, // Desired width
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Hi There! 👋',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff323C5F),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Welcome back, Log in to your account',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffA8ACB4),
              ),
            ),
          ),
          SizedBox(height: 20), // Add space below the welcome text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add border decoration
                borderRadius: BorderRadius.circular(10), // Add border radius
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  border: InputBorder.none, // Remove the default border
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust content padding
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add space below Full Name field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add border decoration
                borderRadius: BorderRadius.circular(10), // Add border radius
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none, // Remove the default border
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust content padding
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add space below Email field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add border decoration
                borderRadius: BorderRadius.circular(10), // Add border radius
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  border: InputBorder.none, // Remove the default border
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust content padding
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add space below Mobile Number field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add border decoration
                borderRadius: BorderRadius.circular(10), // Add border radius
              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none, // Remove the default border
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust content padding
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Add space below Password field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Add border decoration
                borderRadius: BorderRadius.circular(10), // Add border radius
              ),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: InputBorder.none, // Remove the default border
                  contentPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust content padding
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Add space below Confirm Password field
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  'Password must be at least 6 characters',
                  style: TextStyle(
                    color: Color(0xffA8ACB4), // Set color to red for emphasis
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity, // Ensure the container takes the full width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Add border radius
                color: Color(0xff194AF0), // Set background color
              ),
              child: TextButton(
                onPressed: () {
                  // Implement sign in functionality
                },
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: Color(0xffFFDE33),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Verifiedmobilenumber1(),));
                // Navigate to the sign-up screen
              },
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                    color: Color(0xff797B89),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Color(0xff323C5F),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
