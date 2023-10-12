import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:todo/mvvm_complex/model/simple_user.dart';
import 'package:http/http.dart' as http;

class RandomUserRepository {
  static final RandomUserRepository instance = RandomUserRepository._();
  RandomUserRepository._();
  Future<List<RandomUserSimple>> getAllSimpleUser() async {
    try {
      final url = Uri.https('randomuser.me', 'api', {'results': '100'});

      var response = await http.get(url);
      if (response.statusCode ~/ 100 == 2){
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return json['results'].map<RandomUserSimple>((json) => RandomUserSimple.fromJson(json)).toList();
      }
    } catch (e) {
      debugPrint(e.toString());  
    }
    return [];
  }
}
