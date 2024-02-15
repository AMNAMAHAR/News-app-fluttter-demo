import 'package:flutter/material.dart';

class Homemydeals extends StatefulWidget {
  const Homemydeals({Key? key}) : super(key: key);

  @override
  State<Homemydeals> createState() => _HomemydealsState();
}

class _HomemydealsState extends State<Homemydeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Home',
                    style: TextStyle(color: Color(0xff323C5F),fontSize: 22),
                  ),
                ),
                SizedBox(width: 190),
                Image.asset(
                  'images/img.png',
                  height: 20, // Adjust height as needed
                  width: 20, // Adjust width as needed
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    'images/img_9.png',
                    height: 20, // Adjust height as needed
                    width: 20, // Adjust width as needed
                  ),
                ),
              ],
            ),
            SizedBox(height: 2), // Adjust spacing between "Home" and "Worry free deals"
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Worry free deals',
                style: TextStyle(color: Color(0xffA8ACB4),fontSize: 15),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Your Deals',
                style: TextStyle(color: Color(0xff323C5F),fontSize: 20),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset('images/img_23.png',height: 110,),
                SizedBox(width: 3,),
                Image.asset('images/img_24.png',height: 110,),
                SizedBox(width: 3,),
                Image.asset('images/img_36.png',height: 110,),
                SizedBox(width: 3,),
                Image.asset('images/img_53.png',height: 110,),
              ],
            ),
            SizedBox(height: 10), // Adjust spacing between "Your Deals" and "My Deals"
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'My Deals',
                style: TextStyle(color: Color(0xffA8ACB4),fontSize: 15),
              ),
            ),
            SizedBox(height: 2), // Adjust spacing between "My Deals" and "4 Deals need your action"
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '4 Deals need your action',
                style: TextStyle(color: Color(0xffA8ACB4),fontSize: 15),
              ),
            ),
            Row(
              children: [
                Image.asset('images/img_55.png',height: 100,width: 110,),
                SizedBox(width: 8,),
                Image.asset('images/img_56.png',height: 100,width: 110,),
                SizedBox(width: 8,),
                Image.asset('images/img_57.png',height: 100,width: 110,),
              ],
            ),
          ], // Remove the comma here
        ),
      ),
    );
  }
}
