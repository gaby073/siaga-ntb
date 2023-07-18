import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';

class DetailBerita extends StatelessWidget {
  const DetailBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.PrimaryCo,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8),
              child: Row(
                children: [
                  //head
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage('assets/icons_2/arrow.png'),
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Berita",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),

            //Content
            Container(
              height: MediaQuery.of(context).size.height - 90,
              decoration: BoxDecoration(
                color: ColorConstants.BgCo,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Container(
                //scrollable
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Container(
                        //insert image from assets into container
                        height: 250,
                        width: 312,
                        decoration: BoxDecoration(
                          image: new DecorationImage(
                            image: AssetImage("assets/pictures/banjir 1.png"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Text("sdfsakjfhkajsd")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
