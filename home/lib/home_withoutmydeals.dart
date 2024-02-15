import 'package:flutter/material.dart';
import 'package:home/room.dart';

class HomeWithoutmydeals extends StatefulWidget {
  const HomeWithoutmydeals({Key? key}) : super(key: key);

  @override
  State<HomeWithoutmydeals> createState() => _HomeWithoutmydealsState();
}

class _HomeWithoutmydealsState extends State<HomeWithoutmydeals> {
  int _selectedIndex = 0; // Define _selectedIndex

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Home',
                      style: TextStyle(color: Color(0xff323C5F), fontSize: 22),
                    ),
                  ),
                  SizedBox(width: 190),
                  Image.asset(
                    'images/img_8.png',
                    height: 20, // Adjust height as needed
                    width: 20, // Adjust width as needed
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'images/img_10.png',
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
                  style: TextStyle(color: Color(0xffA8ACB4), fontSize: 15),
                ),
              ),
              SizedBox(height: 2), // Adjust spacing
              Card(
                color: Color(0xff194AF0), // Set card color
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0), // Add padding to the card
                  child: Wrap(
                    children: [
                      Text(
                        'Verify your account',
                        style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                        // Set text color
                      ),
                      SizedBox(width: 4,),
                      InkWell(
                        onTap: (){},
                        child: Card(
                          color: Color(0xffFFDE33), // Set small card color
                          child: Padding(
                            padding: const EdgeInsets.all(8.0), // Add padding to the small card
                            child: Text(
                              'Verify Now',
                              style: TextStyle(color: Color(0xff3865FF)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and',
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Your Deals',
                  style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                ),
              ),
              SizedBox(height: 2,),
              Row(
                children: [
                  Image.asset('images/img_1.png', height: 110),
                  SizedBox(width: 3),
                  Image.asset('images/img_2.png', height: 110),
                  SizedBox(width: 3),
                  Image.asset('images/img_3.png', height: 110),
                  SizedBox(width: 3),
                  Image.asset('images/img_4.png', height: 110),
                ],
              ),
              SizedBox(height: 2), // Adjust spacing between "Your Deals" and "My Deals"
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'My Deals',
                  style: TextStyle(color: Color(0xffA8ACB4), fontSize: 15),
                ),
              ),
              SizedBox(height: 2,),
              Row(
                children: [
                  Image.asset('images/img_5.png',height: 70,width: 110,),
                  SizedBox(width: 3,),
                  Image.asset('images/img_6.png',height: 70,width: 110,),
                  SizedBox(width: 3,),
                  Image.asset('images/img_7.png',height: 70,width: 110,),
                ],
              ),
              SizedBox(height: 2),
              Column(
                children: [
                  Image.asset('images/img_23.png',height: 100,width: 100,), // Center the img_23.png asset
                  SizedBox(height: 3),
                  Text(
                    'There is nothing in your deals. Click below to start a new deal.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:2),
                  Card(
                    color: Color(0xff3865FF),
                    elevation: 5,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '+',
                              style: TextStyle(color: Color(0xffFFDE33),fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Start a New Deal',
                              style: TextStyle(color: Color(0xffFFDE33),fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true, // Show the label of the selected item
        showUnselectedLabels: true, // Show the label of the unselected items
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeWithoutmydeals(),));
                },
                child: Image.asset('images/img_18.png',height: 40,)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Room(),));
              },
                child: Image.asset('images/img_19.png',height: 30,)),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/img_20.png',height: 50,),
            label: 'New Deal',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/img_21.png',height: 30,),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/img_22.png',height: 40,),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
