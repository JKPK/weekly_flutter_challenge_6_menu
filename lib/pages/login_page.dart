import 'package:flutter/material.dart';

import '../styleguide.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity(),
      // ..setEntry(3, 2, 0.001)
      // ..translate(250.0)
      // ..rotateY(1)
      // ..scale(0.8),
      alignment: FractionalOffset.center,
      child: Stack(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/login_background.jpg'),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "Exploring\nworld".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * .5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: TextField(
                      decoration: inputDecoration,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .15,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: TextField(
                      decoration: inputDecoration.copyWith(
                          suffixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                          labelText: "Password"),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      obscureText: true,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: MediaQuery.of(context).size.height * .10,
                  child: Center(
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .055,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color(0xFF4F99E3),
                        onPressed: () {},
                        child: Text(
                          "login".toUpperCase(),
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  height: MediaQuery.of(context).size.height * .07,
                  child: Center(
                    child: FlatButton(
                      textColor: Colors.grey,
                      onPressed: () {},
                      child: Text(
                        "Create new account".toUpperCase(),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
