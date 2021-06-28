import 'package:asadbekdev/myProjects/carRenting/ProductsList.dart';
import 'package:asadbekdev/myProjects/carRenting/products.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  final int index;
  ProductInfo(this.index);
  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  Product? choosedProduct;
  @override
  Widget build(BuildContext context) {
    choosedProduct = ProductsList.allProducts[widget.index];
    return Scaffold(
      floatingActionButton: Container(
        child: TextButton(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Text(
              "BUY ${choosedProduct!.productName}",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black.withOpacity(0.7),
            expandedHeight: 300.0,
            stretch: true,
            floating: false,
            pinned: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "${choosedProduct!.productName}",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Tesla",
                ),
              ),
              stretchModes: [
                StretchMode.fadeTitle,
                StretchMode.zoomBackground,
              ],
              centerTitle: true,
              background: Image.asset(
                "assets/images/" + '${choosedProduct!.productPic}',
                fit: BoxFit.cover,
                height: 350.0,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_aboutProduct()),
          )
        ],
      ),
    );
  }

  _aboutProduct() {
    return [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${choosedProduct!.productName}",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Tesla",
                  ),
                ),
                Text(
                  "${choosedProduct!.productYear}",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "1500",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment_sharp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "500",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 90.0),
              child: Text(
                "${choosedProduct!.productDesc}",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  // fontFamily: "Tesla",
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
