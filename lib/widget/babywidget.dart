import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

recents(String imgPath, String name, String price, String stock, String rating,
    String weight, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 20, left: 10),
    child: Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
            Text(
              stock,
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 12.0,
              ),
            ),
            Text(
              rating,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

// Padding(
//       padding: EdgeInsets.only(top: 20, left: 10),
//       child: Column(
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 200,
//                 width: 130,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(2.0),
//                   // color: Colors.black,
//                   image: DecorationImage(
//                     image: AssetImage(img),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
