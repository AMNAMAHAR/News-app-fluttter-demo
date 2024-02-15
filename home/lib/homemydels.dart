import 'package:flutter/material.dart';

import 'home_withoutmydeals.dart';

class Homemydeals extends StatefulWidget {
  const Homemydeals({Key? key}) : super(key: key);

  @override
  State<Homemydeals> createState() => _HomemydealsState();
}

class _HomemydealsState extends State<Homemydeals> {
  int _selectedIndex = 0;

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
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Your Deals',
                  style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                ),
              ),
              SizedBox(height: 5,),
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
              SizedBox(height: 5), // Adjust spacing between "Your Deals" and "My Deals"
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'My Deals',
                  style: TextStyle(color: Color(0xffA8ACB4), fontSize: 15),
                ),
              ),
              SizedBox(height: 2), // Adjust spacing between "My Deals" and "4 Deals need your action"
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '4 Deals need your action',
                  style: TextStyle(color: Color(0xffA8ACB4), fontSize: 15),
                ),
              ),

              Row(
                children: [
                  Image.asset('images/img_5.png',height: 70,width: 110,),
                  SizedBox(width: 3,),
                  Image.asset('images/img_6.png',height: 70,width: 110,),
                  SizedBox(width: 3,),
                  Image.asset('images/img_7.png',height: 70,width: 110,),

                ],

              ),
              SizedBox(height: 5),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/img.png',height: 100,width: 100,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sifa Carpet Hand Woven...',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                'Dealing with ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'EricFowler',
                                style: TextStyle(color: Color(0xff323C5F)),
                              ),
                              SizedBox(width: 8),
                              Card(
                                elevation: 5,

                                  child: Text(
                                    'Rs.10,000',
                                    style: TextStyle(color:Color(0xff3865FF)),
                                  ),
                                ),

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('images/img_13.png', height: 30, width: 60),
                              SizedBox(width:60 ),
                              Image.asset('images/img_16.png',height: 60,width: 130,),
                            ],
                          ),
                          Text(
                            'On Fri, 19 Aug',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/img.png',height: 100,width: 100,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sifa Carpet Hand Woven...',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                'Dealing with ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'EricFowler',
                                style: TextStyle(color:Color(0xff323C5F)),
                              ),
                              SizedBox(width: 8),
                              Card(
                                elevation: 5,

                                  child: Text(
                                    'Rs.10,000',
                                    style: TextStyle(color:Color(0xff3865FF)),
                                  ),
                                ),

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('images/img_17.png', height: 30, width: 60),
                              SizedBox(width:60 ),
                              Image.asset('images/img_16.png',height: 60,width: 130,),
                            ],
                          ),
                          Text(
                            'On Fri, 19 Aug',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/img.png',height: 100,width: 100,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sifa Carpet Hand Woven...',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                'Dealing with ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'EricFowler',
                                style: TextStyle(color: Color(0xff323C5F)),
                              ),
                              SizedBox(width: 8),
                              Card(
                                elevation: 5,

                                  child: Text(
                                    'Rs.10,000',
                                    style: TextStyle(color: Color(0xff3865FF)),
                                  ),
                                ),

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('images/img_17.png', height: 30, width: 60),
                              SizedBox(width:60 ),
                              Image.asset('images/img_16.png',height: 60,width: 130,),
                            ],
                          ),
                          Text(
                            'On Fri, 19 Aug',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Card(
                color: Colors.white,
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/img.png',height: 100,width: 100,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sifa Carpet Hand Woven...',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                'Dealing with ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                'EricFowler',
                                style: TextStyle(color: Color(0xff323C5F)),
                              ),
                              SizedBox(width: 8),
                              Card(
                                elevation: 5,

                                  child: Text(
                                    'Rs.10,000',
                                    style: TextStyle(color: Color(0xff3865FF)),
                                  ),
                                ),

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('images/img_17.png', height: 30, width: 60),
                              SizedBox(width:60 ),
                              Image.asset('images/img_16.png',height: 60,width: 130,),
                            ],
                          ),
                          Text(
                            'On Fri, 19 Aug',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
            icon: Image.asset('images/img_19.png',height: 30,),
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
