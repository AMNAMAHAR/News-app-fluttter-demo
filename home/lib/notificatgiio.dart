import 'package:flutter/material.dart';

import 'searchbarpage.dart';
import 'searchbarpage2.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Notification', style: TextStyle(fontSize: 20, color: Color(0xff323C5F))),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('images/img_41.png', height: 35),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset('images/img_42.png', height: 20),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Last 2 weeks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff797B89)),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xffFFFFFF),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('images/img_45.png', height: 40),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Active Deal',
                                style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                              ),
                              SizedBox(width: 70),
                              Text(
                                '25m ago',
                                style: TextStyle(color: Color(0xff797B89)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing! 🤝',
                            style: TextStyle(color: Color(0xff797B89), fontSize: 12),
                          ),
                          TextFormField(
                            decoration: InputDecoration(fillColor: Color(0xff9EB3FB)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xffFFFFFF),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('images/img_44.png', height: 40),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Active Deal',
                                style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                              ),
                              SizedBox(width: 70),
                              Text(
                                '3hrs ago',
                                style: TextStyle(color: Color(0xff797B89)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing!',
                            style: TextStyle(color: Color(0xff797B89), fontSize: 12),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            Card(
              color: Color(0xffFFFFFF),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('images/img_46.png', height: 40),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Payment Notification',
                                style: TextStyle(color: Color(0xff323C5F), fontSize: 15),
                              ),

                              SizedBox(width: 30),
                              Text(
                                'Mar 20',
                                style: TextStyle(color: Color(0xff797B89)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Successfully paid!',
                            style: TextStyle(color: Color(0xff797B89), fontSize: 12),
                          ),
                          TextFormField(
                            decoration: InputDecoration(fillColor: Color(0xff9EB3FB)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xffFFFFFF),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('images/img_47.png', height: 40),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Cancelled Deal',
                                style: TextStyle(color: Color(0xff323C5F), fontSize: 15),
                              ),

                              SizedBox(width: 30),
                              Text(
                                'Mar 09',
                                style: TextStyle(color: Color(0xff797B89)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing.',
                            style: TextStyle(color: Color(0xff797B89), fontSize: 12),
                          ),
                          TextFormField(
                            decoration: InputDecoration(fillColor: Color(0xff9EB3FB)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color(0xffFFFFFF),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset('images/img_48.png', height: 40),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Offer 25%',
                                style: TextStyle(color: Color(0xff323C5F), fontSize: 15),
                              ),

                              SizedBox(width: 30),
                              Text(
                                'Mar 07',
                                style: TextStyle(color: Color(0xff797B89)),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing!',
                            style: TextStyle(color: Color(0xff797B89), fontSize: 12),
                          ),
                          TextFormField(
                            decoration: InputDecoration(fillColor: Color(0xff9EB3FB)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
            icon:  Image.asset('images/img_18.png',height: 40,),
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
            icon: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBarPage2 (),));
              },
                child: Image.asset('images/img_21.png',height: 30,)),
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
