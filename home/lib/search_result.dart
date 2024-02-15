import 'package:flutter/material.dart';

import 'searchnoresult.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Searchnoresult(),));
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: 'Search a new deal',
                              prefixIcon: Icon(Icons.search, size: 20),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/img_51.png', height: 20, width: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Text(
                'Search Results',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff797B89),
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
                                  style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
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
              SizedBox(height: 10,),
              Text('FAQs',style: TextStyle(color: Color(0xff797B89),fontSize: 20),),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
    children: [
    Expanded(
    child: TextFormField(
    controller: _searchController,
    decoration: InputDecoration(
    hintText: 'How to create a new deal? ',
    prefixIcon:Image.asset('images/img_52.png', height: 20, width: 20),
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide.none,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
    hintStyle: TextStyle(color: Colors.grey),
    prefixIconConstraints: BoxConstraints.tightFor(width: 40),
    suffixIcon: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset('images/img_53.png', height: 15, width: 15),
    ),
    ),
    style: TextStyle(color: Colors.black),
    ),
    ),

            ],
          ),
        ),
      ),
        ]
      ),
    ),
        ]
    ),
    ),
    ),
    );
  }
}
