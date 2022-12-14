import 'dart:convert';
import 'dart:developer';

import 'package:challenge4_api/Const/URLApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class ClassApi {
  static Future MethodGet({required String endPoint}) async {
    try {
      var url = Uri.https(apiURL, endPoint);
      print("here i am1");
      var response = await http.get(url);
      print("here i am2");
      String x = response.body;
      return x;
      // if (response.statusCode == 200) {
      //   return re;
      // } else {
      //   return [];
      // }
    } catch (error) {
      print(error);

      Get.snackbar("Wring", error.toString());
      return [];
    }
  }
}
