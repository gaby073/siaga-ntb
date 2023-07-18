// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../../../../constant.dart';
// import '../models.dart/list_nomor.dart';

// Container CustomBody() {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//       color: ColorConstants.BgCo,
//     ),
//     height: MediaQuery.of(context).size.height - 106,
//     child: Padding(
//       padding: const EdgeInsets.symmetric(vertical: 24),
//       child: ListView.builder(
//         itemCount: TitleNomor.length,
//         shrinkWrap: true,
//         itemBuilder: ((context, index) {
//           return Padding(
//               padding: const EdgeInsets.only(
//                 left: 24,
//                 right: 24,
//               ),
//               child: Container(
//                 child: Card(
//                   elevation: 1,
//                   child: ListTile(
//                     leading: ImageIcon(
//                       AssetImage('assets/icons_2/call.png'),
//                       size: 36,
//                       color: ColorConstants.OrangeCo,
//                     ),
//                     title: Text(
//                       TitleNomor[index],
//                       style: MediumBoldHeadingStyle3,
//                     ),
//                     // style: TextStyle(
//                     //     fontSize: 12, fontWeight: FontWeight.w600)),
//                     subtitle: Text(
//                       SubTitleNomor[index],
//                       style: SubTitle,
//                     ),
//                   ),
//                 ),
//               ));
//         }),
//       ),
//     ),
//   );
// }
