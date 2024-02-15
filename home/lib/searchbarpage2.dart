import 'package:flutter/material.dart';

import 'notificatgiio.dart';
import 'search_deal.dart';

class SearchBarPage2 extends StatefulWidget {
  const SearchBarPage2({Key? key}) : super(key: key);

  @override
  State<SearchBarPage2> createState() => _SearchBarPage2State();
}

class _SearchBarPage2State extends State<SearchBarPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 30),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>SearchDeal(),));
          },
          child: Container(
            height: 350,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'Sort By:',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 50,),
                      Text(
                        'CLEAR ALL',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xffE73A40)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Last 2 weeks',style: TextStyle(color: Color(0xff3865FF)),),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Last 1 month'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Last 3 months'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Last 6 months'),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('2023'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
