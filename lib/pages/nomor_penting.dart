import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';
import '../models/list_nomor.dart';

class NomorPenting extends StatelessWidget {
  NomorPenting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
            padding: const EdgeInsets.only(left: 20, right: 83, top: 36),
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
                SizedBox(width: 50),
                Text(
                  'Nomor Penting',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BgCo,
                  ),
                ),
              ],
            ),
          ),
          //create tab bar for group contact

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: ColorConstants.BgCo,
            ),
            height: MediaQuery.of(context).size.height - 84,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.builder(
                itemCount: TitleNomor.length,
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
                        elevation: 0,
                        child: ListTile(
                          leading: ImageIcon(
                            AssetImage('assets/icons_2/call.png'),
                            size: 30,
                            color: ColorConstants.PrimaryCo,
                          ),
                          title: Text(TitleNomor[index],
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                          subtitle: Text(SubTitleNomor[index],
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300)),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
