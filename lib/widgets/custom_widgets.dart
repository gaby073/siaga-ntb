import 'package:flutter/material.dart';

import '../constant.dart';

Container CardCuaca() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),
            Text(
              "24°c",
              style: TextStyle(
                  fontSize: 52,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Berawan",
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              "assets/awan2.png",
              width: 160,
            ),
            SizedBox(height: 9),
            Row(
              children: [
                //create icon location
                Icon(
                  Icons.location_on_rounded,
                  color: Colors.white,
                  size: 14,
                ),
                SizedBox(width: 8),
                Text(
                  "Lombok Timur",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ]),
    ),
    width: double.infinity,
    height: 172,
    decoration: BoxDecoration(
      //border radius only top right and top left
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      color: ColorConstants.PrimaryCo,
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.15),
      //     spreadRadius: 0,
      //     blurRadius: 10,
      //     offset: Offset(0, 5),
      //   ),
      // ],
    ),
  );
}

Column head() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lokasi saat ini",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Lombok Timur",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //create icon button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              //color from hex
              color: ColorConstants.PrimaryCo,
              size: 32,
            ),
          ),
        ],
      )
    ],
  );
}

// Column CustCard() {
//   return Column(
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Lokasi saat ini",
//                 style: TextStyle(fontSize: 12),
//               ),
//               Text(
//                 "Lombok Timur",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           //create icon button
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.notifications_none_outlined,
//               //color from hex
//               color: ColorConstants.PrimaryCo,
//               size: 32,
//             ),
//           ),
//         ],
//       ),
//       //Card
//       Padding(
//         padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
//         child: Stack(
//           children: [
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 190, left: 18),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         //create icon button from assets icons
//                         IconButton(
//                           onPressed: () {},
//                           icon: Image.asset(
//                             "assets/icons/call.png",
//                             width: 36,
//                             height: 36,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               width: double.infinity,
//               height: 353,
//               decoration: BoxDecoration(
//                 color: Color(0xFFFCFAFA),
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.15),
//                     spreadRadius: 0,
//                     blurRadius: 10,
//                     offset: Offset(0, 5),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 9),
//                           Text(
//                             "24°c",
//                             style: TextStyle(
//                                 fontSize: 52,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             "Berawan",
//                             style: TextStyle(color: Colors.white, fontSize: 14),
//                           )
//                         ],
//                       ),
//                       Column(
//                         children: [
//                           Image.asset(
//                             "assets/awan2.png",
//                             width: 160,
//                           ),
//                           Row(
//                             children: [
//                               //create icon location
//                               Icon(
//                                 Icons.location_on_rounded,
//                                 color: Colors.white,
//                                 size: 14,
//                               ),
//                               SizedBox(width: 4),
//                               Text(
//                                 "Lombok Timur",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ]),
//               ),
//               width: double.infinity,
//               height: 172,
//               decoration: BoxDecoration(
//                 color: ColorConstants.PrimaryCo,
//                 borderRadius: BorderRadius.circular(15),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
