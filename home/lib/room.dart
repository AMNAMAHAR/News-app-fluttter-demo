import 'package:flutter/material.dart';

import 'modify_deal_v2.dart';

class Room extends StatefulWidget {
  const Room({Key? key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  TextEditingController amountController = TextEditingController();
  double amount = 10040.00; // Initial amount

  @override
  void initState() {
    super.initState();
    amountController.text = amount.toStringAsFixed(2); // Set initial amount to the text field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Room',
          style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
        ),
        centerTitle: true,
        leading: Image.asset('images/img_24.png', height: 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color(0xff194AF0), // Set card color
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0), // Add padding to the card
                child: Wrap(
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                      // Set text color
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          'Rs. ${amount.toStringAsFixed(2)}',
                          style: TextStyle(color: Color(0xffFFFFFF), fontSize: 40),
                        ),
                        SizedBox(width: 25),
                        GestureDetector(
                          onTap: () {
                            _showAmountInputDialog(context);
                          },
                          child: Image.asset('images/img_25.png', height: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10), // Add space between the card and "Seller Details"
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Seller Details',
                style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                _showAmountInputDialog(context);
              },
              child: Card(
                color: Color(0xffFFFFFF),
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40, // Add radius to the circle avatar
                      backgroundImage: AssetImage('images/img_26.png'), // Use backgroundImage property for image
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dealing with',
                            style: TextStyle(color: Color(0xff3865FF), fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Robert Downey, Jr.',
                            style: TextStyle(color: Color(0xff323C5F), fontSize: 17),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Deal created on On Fri, 12 Aug',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between "Seller Details" and "Product Details"
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Product Details',
                style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              elevation: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/img_27.png', height: 20, width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Active Deal',
                          style: TextStyle(color: Color(0xff4EE03C), fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Updated on On Fri, 19 Aug ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        TextFormField(),
                        SizedBox(height: 5),
                        Text(
                          'Product Name & Photos',
                          style: TextStyle(color: Color(0xff3865FF), fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Sifa Carpet Hand Woven ',
                          style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                        ),
                        Text(
                          ' Fluffy Shag Carpet',
                          style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Row(

                          children: [
                            Image.asset('images/img_28.png', height: 150,),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Image.asset('images/img_29.png',height: 70,),
                                SizedBox(height: 8,),

                                Image.asset('images/img_30.png',height: 70,),
                                SizedBox(height: 8,),
                                Image.asset('images/img_31.png',height: 70,),
                              ],



                            ),


                          ],
                        ),


                        SizedBox(height: 10,),
                        Text('Product Descriptions',style: TextStyle(color: Color(0xff3865FF),fontSize: 15),),
                        SizedBox(height: 10,),
                        Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'
                            ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap'
                            ' into electronic typesetting, remaining essentially unchanged....',style: TextStyle(color: Color(0xff797B89),fontSize: 15),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ModifydealV2(),));
                          },
                          child: Card(
                            color: Color(0xff3865FF),
                            elevation: 5,
                            child: Text('View all',style: TextStyle(color: Color(0xffECF1FF),fontSize: 15),),
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 3,
              color: Color(0xffFFFFFF),
            ),
            Text('Payment Details ',style: TextStyle(color: Color(0xff323C5F)),),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Total Product Price',style: TextStyle(color: Color(0xff797B89),fontSize: 15),),
                SizedBox(width: 150,),
                Text('Rs. 10,000',style: TextStyle(color: Color(0xff797B89)),),


                  ],
                ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Yakeenkar Fees',style: TextStyle(color: Color(0xff797B89),fontSize: 15),),
                SizedBox(width: 170,),
                Text('Rs. 30',style: TextStyle(color: Color(0xff797B89)),),


              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Taxes',style: TextStyle(color: Color(0xff797B89),fontSize: 15),),
                SizedBox(width: 220,),
                Text('Rs. 10',style: TextStyle(color: Color(0xff797B89)),),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Total Amount',style: TextStyle(color: Color(0xff3865FF),fontSize: 18),),
                SizedBox(width: 180,),
                Text('Rs. 10,040',
                  style: TextStyle(color: Color(0xff3865FF)),),

              ],
            ),
          ],
        ),
      ),
    );
  }

  // Method to show the dialog for amount input
  Future<void> _showAmountInputDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Amount'),
          content: TextFormField(
            controller: amountController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(labelText: 'Amount'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  amount = double.parse(amountController.text);
                  Navigator.of(context).pop();
                });
              },
              child: Text('OK'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
