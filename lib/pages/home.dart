import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:siaga_ntb/widgets/custom_widgets.dart';

import '../constant.dart';
import '../routes/route_name.dart';
import 'berita.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              head(),
              SizedBox(height: 24),
              CardCuaca(),
              Container(
                height: 100,
                width: double.infinity,
                color: Color(0xFFFCFAFA),
                //create decoration for container shadow opacity 0.15, blur 10, y 5

                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
