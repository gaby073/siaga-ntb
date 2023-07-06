import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Berita"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Page berita"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("back to Home"),
            )
          ],
        ),
      ),
    );
  }
}
