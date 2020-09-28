import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

carousel(String imgPath, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      image: DecorationImage(
        image: AssetImage(imgPath),
        fit: BoxFit.cover,
      ),
      // color: Colors.grey[200],
    ),
  );
}
