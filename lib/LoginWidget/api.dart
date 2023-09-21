import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

_setHeaders(access_token) => {
      'Content-type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      'Authorization': 'Bearer $access_token'
    };
_setHeadersWithOutToken() => {
      // 'Content-type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };


class loginapi{

  login(data) async {
    String loginUrl = "https://96e0-2405-201-e03e-880a-600c-c531-16e9-24be.ngrok-free.app/api/retaillogin";
    var response = await http.post(Uri.parse(loginUrl),
    body: data,headers: _setHeadersWithOutToken(),
    );
    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      return json.decode(response.body);
    } else {
      return jsonDecode(response.body);
    }
  }
}