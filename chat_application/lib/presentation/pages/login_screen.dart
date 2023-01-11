import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                margin: EdgeInsets.fromLTRB(700, 100, 700, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: ButtonConst.loginEnterName,
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(151, 214, 123, 5))),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        labelText:ButtonConst.loginEnterPassword,
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(151, 214, 123, 5))),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        labelText:ButtonConst.loginVerifyPassword,
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                width: 5,
                                color: Color.fromARGB(151, 214, 123, 5))),
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                  ],
                ))));

    ;
  }
}
