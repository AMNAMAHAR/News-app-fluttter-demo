import 'package:flutter/material.dart';

import 'pages/popup_login.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _savePassword() {
    String newPassword = _passwordController.text;
    // Implement your save functionality here
    print('Password saved: $newPassword');
    // Navigate back or perform any other action
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Image.asset('images/img_25.png', height: 20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'New password 🔐',
              style: TextStyle(
                color: Color(0xff323C5F),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Your new password must be different from previously used passwords.',
                  style: TextStyle(fontSize: 13, color: Color(0xffA8ACB4)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'New Password',
              style: TextStyle(fontSize: 16, color: Color(0xff323C5F)),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffC9D3F5)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '**********',
                  suffixIcon: Image.asset('images/img_45.png', height: 15, width: 5),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Confirm Password',
              style: TextStyle(fontSize: 16, color: Color(0xff323C5F)),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffC9D3F5)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '*********',
                  suffixIcon: Image.asset('images/img_45.png', height: 15, width: 5),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Password must be at least 6 characters',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xffA8ACB4)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PopupLogin(),));
        },
        child: BottomAppBar(
          color: Color(0xff3865FF),
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _savePassword,
                child: Text(
                  'SAVE',
                  style: TextStyle(color: Color(0xffFFDE33)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
