import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sillysale/pages/details/showdetails.dart';

women(String imgPath, String name, String price, String stock, String rating,
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
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShowDetails(
                          file: imgPath,
                          name: name,
                          price: price,
                          sku: stock,
                          visibility: rating,
                          weight: weight,
                        ))),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                // color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(imgPath),
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
                ),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Text(
              stock,
              style: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
            Text(
              rating,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
