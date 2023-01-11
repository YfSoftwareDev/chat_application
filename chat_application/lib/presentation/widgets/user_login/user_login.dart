import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/strings.dart';
import '../../../logic/user_login_bloc/user_login_bloc.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserLoginBloc, UserLoginState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Container(
            margin: EdgeInsets.fromLTRB(700, 100, 700, 0),
            child: Column(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ImgConst.loginUser),
                    radius: 120.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: GuidingWordsConst.enterName,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(255, 190, 93, 36))),
                  ),
                  onChanged: (text) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 40),
                TextField(
                  decoration: InputDecoration(
                    labelText: GuidingWordsConst.enterPassword,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(255, 146, 70, 26))),
                  ),
                  onChanged: (text) {
                    setState(() {});
                  },
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(400, 20, 0, 0),
                  child: TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        ButtonConst.subscribeButton,
                        style:
                            TextStyle(color: Color.fromARGB(255, 175, 91, 12)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 253, 253, 253)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 177, 90, 9))),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    400,
                    0,
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        ButtonConst.enterButton,
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 253, 253, 253)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 177, 90, 9)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ))),
                ),
              ],
            ));
      },
    );
  }
}
