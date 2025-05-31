// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:fltterfly/views/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> senddata(
  TextEditingController namecontroller,
  TextEditingController agecontroller,
) async {
  String name = namecontroller.text;
  int age = int.tryParse(agecontroller.text) ?? 0;

  Man man = Man(age, name);

  final url = Uri.tryParse("https://api.restful-api.dev/objects");
  try {
    final response = await http.post(
      url!,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(man.tojson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print("data uploaded 🍾🤣");
      print("namecontroller: ${namecontroller.text}");
      print("agecontroller: ${agecontroller.text}");
    } else {
      print("data uploading successfully failed 🍾😶‍🌫️");
    }
  } catch (e) {
    print("something is fishy");
  }
}

Future<void> getdata() async {
  final url = Uri.tryParse("https://api.restful-api.dev/objects");
  try {
    final response = await http.get(url!);

    if (response.statusCode == 200) {
      print("data fetched successfully 🍾🤣");
      print(response.body);
    } else {
      print("data fetching failed 🍾😶‍🌫️");
    }
  } catch (e) {
    print("something is fishy");
  }
}
