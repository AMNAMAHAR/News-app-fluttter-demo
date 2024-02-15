import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Image(image: AssetImage('images/img_9.png'),width: 130,),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications_none_outlined,color: Colors.black,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      children: [
                        Image(image: AssetImage('images/img_5.png'),width: 65,),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Love'),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Image(image: AssetImage('images/img_7.png'),width: 65,),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Cool'),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Image(image: AssetImage('images/img_8.png'),width: 65,),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Happy'),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Image(image: AssetImage('images/img_10.png'),width: 65,),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Sad'),
                        )
                      ],
                    )

                  ],
                ),
              ),


              const Padding(
                padding: EdgeInsets.only(left: 28,right: 28,top: 20,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feature',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text('Show all',
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                    height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width/1,
                    padding: const EdgeInsets.only(top: 10),
                    child: const Image(image: AssetImage('images/img_4.png'))
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 28,right: 28,top: 20,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exercise',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text('Show all',
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    )
                  ],
                ),
              ),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17,top: 10),
                    child: Image(image: AssetImage('images/img.png'),width: 180,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17,top: 10),
                    child: Image(image: AssetImage('images/img_2.png'), width: 145,),
                  ),
                ],
              ),

              const SizedBox(height: 5,),

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17,top: 10),
                    child: Image(image: AssetImage('images/img_3.png'),width: 180,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17,top: 10),
                    child: Image(image: AssetImage('images/img_1.png'), width: 145,),
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}