import 'dart:ffi';

import 'package:challenge4_api/Controllers/QuotesControl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  QuotesController control = Get.put(QuotesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          GetBuilder<QuotesController>(
              builder: (controller) => Text(control.Data.toString())),
          ElevatedButton(
              onPressed: () {
                control.fetchQuotes();
              },
              child: Text("Prees to get Data"))
        ],
      ),
    );
  }
}
