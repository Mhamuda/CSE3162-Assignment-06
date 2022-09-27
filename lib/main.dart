import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {

  String url = 'https://jsonplaceholder.typicode.com/users';
  getsUsers(url);
}

getsUsers(var url) async {
  var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
  var data = jsonDecode(response.body);

  for (var i in data) {
    User user = User(i["name"], i["email"], i["username"]);
    print(user.name);
    print(user.email);
  }
}

class User {
  String name,email,username;

  User(this.name, this.email, this.username);
}

