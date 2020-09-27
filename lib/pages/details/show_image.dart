import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowImage extends StatefulWidget {
  String imgpath;
  ShowImage(this.imgpath);

  @override
  _ShowImageState createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                height: height,
                width: width,
                imageUrl: widget.imgpath,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                fadeInCurve: Curves.bounceIn,
                fadeInDuration: Duration(
                  milliseconds: 500,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
