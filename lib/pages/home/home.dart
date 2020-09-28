import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:sillysale/constants/fzstore.dart';
import 'package:sillysale/provider/products.dart';
import 'package:sillysale/widget/babywidget.dart';
import 'package:sillysale/widget/carouselwidget.dart';
// import 'package:simple_slider/simple_slider.dart';
import 'package:sillysale/widget/womenwidget.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var babyitem = "Baby Items";

  @override
  void initState() {
    Provider.of<Products>(context, listen: false).fetchData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -(MediaQuery.of(context).size.height * .40),
            left: -1.0,
            right: -1.0,
            child: Container(
              height: MediaQuery.of(context).size.height * .977125,
              width: (MediaQuery.of(context).size.width - 22) * .98941176,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFde6262),
                    Color(0xFFffb88c),
                  ], // Bloody Mary
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .05,
            // left: 0.0,
            right: MediaQuery.of(context).size.width * .09,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF06beb6),
                    Color(0xFF48b1bf),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .09,
            // right: MediaQuery.of(context).size.width * .09,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF009FFF),
                    Color(0xFFec2F4B),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .13,
            left: -(MediaQuery.of(context).size.width * .02),
            // right: MediaQuery.of(context).size.width * .09,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFff9966),
                    Color(0xFFff5e62),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .13,
            // left: -(MediaQuery.of(context).size.width * .02),
            right: -(MediaQuery.of(context).size.width * .02),
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF283c86),
                    Color(0xFF45a247),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .481,
            left: -(MediaQuery.of(context).size.width * .07),
            // right: MediaQuery.of(context).size.width * .30,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xED2B33FF),
                    Color(0xD85A7FFF),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .481,
            // left: 0.0,
            right: MediaQuery.of(context).size.width * .43,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFeb3349),
                    Color(0xFFf45c43),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .481,
            // left: -(MediaQuery.of(context).size.width * .07),
            right: -(MediaQuery.of(context).size.width * .07),
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEF3B36),
                    Color(0xEEA47FFF),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .85,
            // left: 0.0,
            right: MediaQuery.of(context).size.width * .43,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF2b5876),
                    Color(0xFF4e4376),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .85,
            left: -(MediaQuery.of(context).size.width * .07),
            // right: MediaQuery.of(context).size.width * .30,
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFc0392b),
                    Color(0xFF8e44ad),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .85,
            // left: -(MediaQuery.of(context).size.width * .07),
            right: -(MediaQuery.of(context).size.width * .07),
            // bottom: 0.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF159957),
                    Color(0xFF155799),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .05,
            left: MediaQuery.of(context).size.width * .05,
            child: Text(
              "SillySale",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                letterSpacing: 1.0,
                decoration: TextDecoration.none,
                wordSpacing: 2.5,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80.0),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    // enlargeCenterPage: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    // viewportFraction: 0.8,
                  ),
                  items: [
                    carousel(
                      "assets/images/carousel1.jpg",
                      context,
                    ),
                    carousel(
                      "assets/images/carousel2.jpg",
                      context,
                    ),
                    carousel(
                      "assets/images/carousel3.jpg",
                      context,
                    ),
                    carousel(
                      "assets/images/carousel4.jpg",
                      context,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Baby Items",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        height: 20.0,
                        padding: EdgeInsets.only(right: 5),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          padding: EdgeInsets.all(
                            0.0,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF4568dc),
                                  Color(0xFFb06ab3),
                                ],
                                tileMode: TileMode.clamp,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 100.0,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: products.isFetching
                      ? SpinKitChasingDots(
                          color: Colors.amber,
                        )
                      : ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            products.getSillyProducts().length,
                            (index) => baby(
                              FZStore.productsimgurl +
                                  products
                                      .getSillyProducts()[index]
                                      .mediaGalleryEntries[0]
                                      .file,
                              products.getSillyProducts()[index].name,
                              products
                                  .getSillyProducts()[index]
                                  .price
                                  .toString(),
                              products.getSillyProducts()[index].sku,
                              products
                                  .getSillyProducts()[index]
                                  .visibility
                                  .toString(),
                              products
                                  .getSillyProducts()[index]
                                  .visibility
                                  .toString(),
                              context,
                            ),
                          ),
                        ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Baby Items",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        height: 20.0,
                        padding: EdgeInsets.only(right: 5),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                          ),
                          padding: EdgeInsets.all(
                            0.0,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF5032B6),
                                  Color(0xFFB765D3),
                                ],
                                tileMode: TileMode.clamp,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 100.0,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "View More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      women(
                        "assets/images/girl1.jpg",
                        "Black & White Combo",
                        "\$35.00",
                        "In Stock",
                        "Rating",
                        "weight",
                        context,
                      ),
                      women(
                        "assets/images/girl2.jpg",
                        "Black & White Combo",
                        "\$35.00",
                        "In Stock",
                        "Rating",
                        "weight",
                        context,
                      ),
                      women(
                        "assets/images/girl3.jpg",
                        "Black & White Combo",
                        "\$35.00",
                        "In Stock",
                        "Rating",
                        "weight",
                        context,
                      ),
                      women(
                        "assets/images/girl4.jpg",
                        "Black & White Combo",
                        "\$35.00",
                        "In Stock",
                        "Rating",
                        "weight",
                        context,
                      ),
                      women(
                        "assets/images/girl1.jpg",
                        "Black & White Combo",
                        "\$35.00",
                        "In Stock",
                        "Rating",
                        "weight",
                        context,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height * .035,
          //   right: MediaQuery.of(context).size.width * .02,
          //   child: PopupMenuButton<MenuItems>(
          //     elevation: 3.0,
          //     onCanceled: () => {},
          //     tooltip: "Menu",
          //     onSelected: selectedMenuItem,
          //     itemBuilder: (BuildContext context) {
          //       return menu.map(
          //         (MenuItems menuItem) {
          //           return PopupMenuItem<MenuItems>(
          //             value: menuItem,
          //             child: Text(menuItem.title),
          //           );
          //         },
          //       ).toList();
          //     },
          //   ),
          // ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height * .11,
          //   left: 10.0,
          //   right: 10.0,
          //   bottom: 0.0,
          //   child: GridAnimate(
          //     Container(
          //       height: MediaQuery.of(context).size.height,
          //       width: MediaQuery.of(context).size.width,
          //       child: NotificationListener<ScrollNotification>(
          //         onNotification: (ScrollNotification scrolling) {
          //           if (!foods.isLoading &&
          //               scrolling.metrics.pixels ==
          //                   scrolling.metrics.maxScrollExtent) {
          //             foods.loadmore();
          //           }
          //           return foods.isLoading;
          //         },
          //         child: StaggeredGridView.countBuilder(
          //           crossAxisCount: 4,
          //           crossAxisSpacing: 10.0,
          //           mainAxisSpacing: 10.0,
          //           physics: AlwaysScrollableScrollPhysics(),
          //           itemCount: foods.getResponseJson().length,
          //           itemBuilder: (c, i) => InkWell(
          //             onTap: () {
          //               createInterstitialAd()
          //                 ..load()
          //                 ..show();
          //               Navigator.pushNamed(
          //                 context,
          //                 Frazile.fullImage,
          //                 arguments: FullImageArguments(
          //                   foods.getResponseJson()[i].urls.full,
          //                   foods.getResponseJson()[i].urls.regular,
          //                 ),
          //               );
          //             },
          //             child: Hero(
          //               tag: foods.getResponseJson()[i].id,
          //               child: Container(
          //                 child: ClipRRect(
          //                   borderRadius: BorderRadius.circular(
          //                     10.0,
          //                   ),
          //                   child: CachedNetworkImage(
          //                     fadeInCurve: Curves.easeInCubic,
          //                     fadeInDuration: Duration(milliseconds: 900),
          //                     imageUrl: foods.getResponseJson()[i].urls.regular,
          //                     alignment: Alignment.center,
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //                 decoration: BoxDecoration(
          //                   color: Colors.pink,
          //                   borderRadius: BorderRadius.circular(
          //                     10.0,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ),
          //           staggeredTileBuilder: (i) => StaggeredTile.count(
          //             2,
          //             i.isEven ? 2 : 3,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Positioned(
          //   left: MediaQuery.of(context).size.width * .1,
          //   right: MediaQuery.of(context).size.width * .1,
          //   bottom: MediaQuery.of(context).size.height * .02,
          //   child: foods.isLoading
          //       ? SpinKitChasingDots(
          //           size: 80.0,
          //           itemBuilder: (context, index) => DecoratedBox(
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               gradient: LinearGradient(
          //                 colors: FzColors().getListColors(
          //                   [
          //                     "#9400D3",
          //                     "#4B0082",
          //                     "#0000FF",
          //                     "#00FF00",
          //                     "#FFFF00",
          //                     "#FF7F00",
          //                     "#FF0000"
          //                   ],
          //                 ),
          //                 tileMode: TileMode.clamp,
          //                 begin: Alignment.topLeft,
          //                 end: Alignment.bottomRight,
          //                 stops: [
          //                   0.0,
          //                   0.14285714285714285,
          //                   0.2857142857142857,
          //                   0.42857142857142855,
          //                   0.5714285714285714,
          //                   0.7142857142857143,
          //                   0.8571428571428571
          //                 ],
          //               ),
          //             ),
          //           ),
          //         )
          //       : Container(),
          // ),
        ],
      ),
    );
  }
}
