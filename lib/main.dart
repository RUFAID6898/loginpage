import 'package:flutter/material.dart';
import 'package:flutter_application_sindpage1/Secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _gmailContoller = TextEditingController();
    return Scaffold(
        body: Center(
      child: Container(
        width: 300,
        height: 500,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(blurRadius: 20, offset: Offset(20, 20)),
            ]),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 50,
              ),
              Container(
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'username'),
                  textAlign: TextAlign.center,
                ),
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, offset: Offset(20, 15))
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  controller: _gmailContoller,
                  decoration: InputDecoration(labelText: 'gmail'),
                  textAlign: TextAlign.center,
                ),
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, offset: Offset(20, 15))
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'password'),
                  textAlign: TextAlign.center,
                ),
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, offset: Offset(20, 15))
                    ]),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    // String username = _usernameController.text;
                    // String gmail = _gmailContoller.text;
                    // String password = _passwordController.text;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ));
                  },
                  child: Text('login')),
            ]),
      ),
    ));
  }
}
