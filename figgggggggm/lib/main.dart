import 'package:flutter/material.dart';
import 'aboutpage.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectIndex = 0;
  void _Navigationbar(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  List<Widget> screen = [
    Home_Page(),
    About_Page()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screen[_selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
          currentIndex: _selectIndex,
          onTap: _Navigationbar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined,),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,),label: '',),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: '',)
          ],
        ),
      ),
    );
  }
}
