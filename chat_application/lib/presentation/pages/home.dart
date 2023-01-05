import 'dart:async';
import 'dart:math';
import 'package:chat_application/presentation/widgets/user_login/user_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/constants.dart';



class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StreamController<double> controller = StreamController<double>.broadcast();
  late StreamSubscription<double> streamSubscription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImgConst.loginBackground),
            fit: BoxFit.cover,
          ),
        ),
       child:UserLogin())
    );


  }



}