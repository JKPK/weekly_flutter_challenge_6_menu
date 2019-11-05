import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..translate(250.0)
        ..rotateY(1)
        ..scale(0.8),
      alignment: FractionalOffset.center,
      child: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('Login Page'),
        ),
      ),
    );
  }
}
