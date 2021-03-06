import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sillysale/pages/details/showdetails.dart';

baby(String imgPath, String name, String price, String stock, String rating,
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
              width: 180.0,
              // width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ShowDetails(
                      file: imgPath,
                      name: name,
                      price: price,
                      sku: stock,
                      visibility: rating,
                      weight: weight,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(imgPath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.0,
              ),
            ),
            Text(
              stock,
              style: TextStyle(
                color: Colors.green,
                fontSize: 12.0,
              ),
            ),
            Text(
              rating,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
