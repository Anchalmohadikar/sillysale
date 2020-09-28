import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDetails extends StatefulWidget {
  final file;
  final name;
  final price;
  final sku;
  final visibility;
  final weight;

  const ShowDetails(
      {Key key,
      this.file,
      this.name,
      this.price,
      this.sku,
      this.visibility,
      this.weight})
      : super(key: key);

  @override
  _ShowDetailsState createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  List<DropdownMenuItem<int>> listDrop = [];
  int selected = null;
  void loadData() {
    listDrop.add(DropdownMenuItem(
      child: Text("1"),
      value: 1,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("2"),
      value: 2,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("3"),
      value: 3,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("4"),
      value: 4,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("5"),
      value: 5,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("6"),
      value: 6,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("7"),
      value: 7,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("8"),
      value: 8,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text("9"),
      value: 9,
    ));
  }

  // String quantity = "";
  // var _quantityitem = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  // var _currentquantity = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                  0.6,
                ),
                backgroundBlendMode: BlendMode.darken,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80.0),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.file),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Price:" + widget.price,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          widget.sku,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "Availabe:" + widget.visibility,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.grey,
                              child: Container(
                                height: 50.0,
                                width: 150.0,
                                child: Center(
                                  child: Text(
                                    "BUY NOW",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),

                            // MaterialButton(
                            //   color: Colors.amberAccent,
                            //   height: 50.0,
                            //   elevation: 0.0,
                            //   minWidth: 150.0,
                            //   onPressed: () {},
                            //   child: Text(
                            //     "BUY NOW",
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            // ),
                            InkWell(
                              onTap: () {},
                              splashColor: Colors.grey,
                              child: Container(
                                height: 50.0,
                                width: 150.0,
                                child: Center(
                                  child: Text(
                                    "ADD TO CART",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            DropdownButton(
                              items: listDrop,
                              hint: Text(
                                "Q",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              onChanged: null,
                              value: selected,
                            ),
                          ],
                        ),
                        // ListView.builder(
                        //   itemCount: data.length,
                        //   itemBuilder: (BuildContext context, int index) =>
                        //       DescriptionItem(
                        //     data[index],
                        //   ),
                        // ),
                        SizedBox(height: 1000.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.of(context).pop(),
                    color: Colors.grey,
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class Description {
//   final String title;
//   final List<Description> children;
//   Description(this.title, [this.children = const <Description>[]]);
// }

// final List<Description> data = <Description>[
//   Description("Discription", <Description>[
//     Description("title"),
//     Description("title"),
//     Description("title"),
//     Description("title"),
//     Description("title"),
//   ]),
// ];

// class DescriptionItem extends StatelessWidget {
//   const DescriptionItem(this.description);
//   final Description description;

//   Widget _buildTiles(Description root) {
//     if (root.children.isEmpty) {
//       return ListTile(
//         title: Text(root.title),
//       );
//     }
//     return ExpansionTile(
//       key: PageStorageKey<Description>(root),
//       title: Text(root.title),
//       children: root.children.map<Widget>(_buildTiles).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildTiles(description);
//   }
// }
