import 'dart:convert';

import 'package:chat_application/constants/constants.dart';
import 'package:chat_application/data/model/user.dart';
import 'package:flutter/services.dart';

abstract class UserRepository {
  bool userFounder(Map<String,dynamic> user);
  Future<List<User>> getUser();
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getUser() async {
    var response =
        await rootBundle.loadString(JsonConst.usersJsonFile);
    if (response.isNotEmpty) {
      var data = jsonDecode(response);
      var temp = data["contacts"];
      List<User> users = [];
      temp.forEach((user) {
        users.add(User.fromJson(user));
      });
      return users;
    } else {
       print(Exception());
      throw Exception();
     
    }
  }
  
  @override
  bool userFounder(Map<String, dynamic> user) {
    // TODO: implement userFounder
    throw UnimplementedError();
  }
  //todo from here
  // @override
  // Future<bool> userFounder(Map<String,dynamic> user)async {
  //     var recvUsersList= await rootBundle.loadString(JsonConst.usersJsonFile);  
  //     return ;
  // }
}