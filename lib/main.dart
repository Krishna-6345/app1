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
  String name ='';
  String mobileNumber ='';
  String displayText ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        
        padding: EdgeInsets.all(150.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
              onChanged: (value) {
                
                setState(() {
                  name = value;
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
                  mobileNumber = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            FloatingActionButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  displayText = '\n Name: $name \nMobile: $mobileNumber';
                  name = "";
                  mobileNumber = "";
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
