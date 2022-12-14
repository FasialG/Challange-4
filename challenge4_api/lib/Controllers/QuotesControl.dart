import 'dart:convert';

import 'package:challenge4_api/Services/Api%20Network/ApiClassMethod.dart';
import 'package:challenge4_api/Services/Api%20Network/EndPoints.dart';
import 'package:get/get.dart';

class QuotesController extends GetxController {
  @override
  var Data;
  fetchQuotes() async {
    Data = await ClassApi.MethodGet(endPoint: EndPoints.quotes);
    update();
  }
}
