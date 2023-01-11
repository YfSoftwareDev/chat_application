import 'dart:convert';

import 'package:chat_application/repository/repository.dart';
import '../model/user.dart';



class LoginRepository {
  late Repository repository = Repository();
  void sendUserToJson(User user) async {
    Map<String, dynamic> recvList;
    if (user.isFull()) {
      try {
        recvList = jsonDecode(await repository.readFromFile("users"));
        recvList["users"].add(user.toJson());
        repository.writeToFile(jsonEncode(recvList), "users");
      } catch (Expcation) {
        print(Expcation);
      }
    }

    print(" hoo");
  }

  Future<bool> checkForUser(User user) async {
    Map<String, dynamic> recvList;
    try {
      recvList = jsonDecode(await repository.readFromFile("users"));
      var temp = recvList["users"][0]["name"];
      for (int i = 0; i < recvList["users"].length; i++) {
        print(recvList["users"][i]["name"] + user.name);
        if (recvList["users"][i]["name"] == user.name) {
          print(recvList["users"][i]["password"] + user.password);
          if (recvList["users"][i]["password"] == user.password) {
            return true;
          }
        }
      }
    } catch (Expcation) {
      print(Expcation);
    }
    return false;
  }
}
  // Future<File> _initializeFile() async {
  //   final localDirectory = await getApplicationDocumentsDirectory();
  //   final file = File('$localDirectory/$localFilename');

