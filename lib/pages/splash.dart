import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../routes/route_name.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.amber),
                  width: 312,
                  height: 86,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/pictures/banjir 1.png'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.black),
                    width: 100,
                    height: 86,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
