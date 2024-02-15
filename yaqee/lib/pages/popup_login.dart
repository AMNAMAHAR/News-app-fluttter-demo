import 'package:flutter/material.dart';

import '../Screen/home/homewithmydeals.dart';

class PopupLogin extends StatefulWidget {
  const PopupLogin({Key? key}) : super(key: key);

  @override
  State<PopupLogin> createState() => _PopupLoginState();
}

class _PopupLoginState extends State<PopupLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 340,
            child: Image.asset(
              'images/img_48.png', // Background image
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
                  'images/img_49.png', // Upper image
                  height: 200, // Adjust height as needed
                ),
                SizedBox(height: 30),
                Image.asset(
                  'images/img_50.png', // End image
                  height: 260,
                  color: Color(0xffFFFFFF),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 260, // Adjusted position
            left: 30,
            right: 10,
            child: Column(
              children: [
                Center(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text(
                        'Password Successfully ',
                        style: TextStyle(color: Color(0xff1D3A70), fontSize: 20),
                      ),

                    ),
                  ),
                ),
                Text(
                  'Created 👍',
                  style: TextStyle(color: Color(0xff1D3A70), fontSize: 20),
                ),
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Text(
                      'Your new password has been created ',
                      style: TextStyle(color: Color(0xff797B89), fontSize: 13),
                    ),
                  ),
                ),
    Text(
    'successfully!',
    style: TextStyle(color: Color(0xff797B89), fontSize: 15),
    ),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>  Homemydeals() ,));
                  },
                    child: Image.asset('images/img_51.png', height: 80,width: 80,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
