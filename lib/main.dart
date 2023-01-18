import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _name = '';
  String _mobileNumber = '';
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your mobile number',
              ),
              onChanged: (value) {
                setState(() {
                  _mobileNumber = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            FloatingActionButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  displayText = '\n Name: $_name \nMobile: $_mobileNumber';
                  _name = "";
                  _mobileNumber = "";
                });
              },
            ),
            Text(displayText)
          ],
        ),
      ),
    );
  }
}
