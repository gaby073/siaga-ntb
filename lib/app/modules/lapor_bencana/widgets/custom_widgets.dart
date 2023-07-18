import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lapor_bencana_controller.dart';

final controller = Get.put(LaporBencanaController());

Widget reusableTextFormField(
    String label, TextEditingController controller, int maxLines) {
  return TextFormField(
    controller: controller,
    maxLines: maxLines,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
