import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:siaga_ntb/models/list_lokasi.dart';

import '../constant.dart';

class PetaLokasi extends StatelessWidget {
  PetaLokasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 80),
                  Text(
                    'Peta Lokasi',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              height: MediaQuery.of(context).size.height - 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                  itemCount: Lokasi.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: 72,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          )
                        ]),
                        child: Card(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(children: [
                                ImageIcon(
                                  AssetImage('assets/icons_2/loc.png'),
                                  size: 30,
                                  color: ColorConstants.PrimaryCo,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    Lokasi[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
