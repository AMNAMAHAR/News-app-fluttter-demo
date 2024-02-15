import 'package:flutter/material.dart';
import 'package:home/modify_deal_done2.dart';

class ModifydealV2 extends StatefulWidget {
  const ModifydealV2({Key? key});

  @override
  State<ModifydealV2> createState() => _ModifydealV2State();
}

class _ModifydealV2State extends State<ModifydealV2> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController inspectionDaysController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Details',
                style: TextStyle(color: Color(0xff323C5F), fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(border: Border.all(color: Color(0xffEAF1FF))),
                child: TextFormField(
                  controller: productNameController,
                  decoration: InputDecoration(
                    labelText: "Product Name",
                    hintText: "Sifa Carpet Hand Woven Fluffy Shag Carpet",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Color(0xffEAF1FF))),
                      child: TextFormField(
                        controller: priceController,
                        decoration: InputDecoration(
                          labelText: "Price",
                          hintText: "Rs. 10,000.00",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Color(0xffEAF1FF))),
                      child: TextFormField(
                        controller: inspectionDaysController,
                        decoration: InputDecoration(
                          labelText: "Inspection Days",
                          hintText: "2",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text('Product Description',style: TextStyle(color: Color(0xff323C5F),fontSize: 25),),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 150, // Adjusted height to accommodate hint text
                decoration: BoxDecoration(border: Border.all(color: Color(0xffEAF1FF))),
                child: TextFormField(
                  controller: productDescriptionController,
                  decoration: InputDecoration(
                    labelText: "Product Description",
                    hintText: "Made By High Quality Super Soft \nMicrofiber And Cotton Yarn.\n Material microfiber with soft touch\n under feet Wash Care easy wash \nwith cold detergent water",
                    border: InputBorder.none,
                    contentPadding:EdgeInsets.symmetric(horizontal: 10),
                  ),
                  maxLines: null, // Set maxLines to null to allow expanding vertically
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Add Product Photos',style: TextStyle(fontSize: 25,color: Color(0xff323C5F)),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/img_33.png', height: 100),
                    Image.asset('images/img_34.png', height: 100),
                    Image.asset('images/img_35.png', height: 100),
                    Image.asset('images/img_36.png', height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Modifydealdone2(),));
        },
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                child: Text(
                  'Modify Deal',
                  style: TextStyle(fontSize: 20, color: Color(0xffFFDE33)),
                ),
              ),

            ],
          ),
          color: Color(0xff3865FF),
          elevation: 0, // remove shadow
        ),
      ),
    );
  }
}
