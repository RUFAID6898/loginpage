import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [BoxShadow(blurRadius: 20, offset: Offset(20, 20))]),
        child: Text(
          'HI GYS',
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}
