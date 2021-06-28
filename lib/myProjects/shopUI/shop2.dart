import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30, right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Milan",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        ),
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                          radius: 25.0,
                        ),
                        Text(
                          "New in",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                          radius: 25.0,
                        ),
                        Text(
                          "Sale",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                          radius: 25.0,
                        ),
                        Text(
                          "Brand",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                          radius: 25.0,
                        ),
                        Text(
                          "Clothing",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/pic1.jpg",
                          ),
                          radius: 25.0,
                        ),
                        Text(
                          "Shoes",
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif",
                  image: "https://telegra.ph/file/be477b88db640dbee5eb9.png",
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -40.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Modern",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 37.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20.0),
                              child: Divider(
                                color: Colors.black,
                                height: 36.0,
                              ),
                            ),
                          ),
                          Text(
                            "Essentials",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 41.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                color: Colors.black,
                                height: 36.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Discover new styles",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 60,
                          margin: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.circle_rounded,
                                size: 8,
                                color: Colors.black87,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 8,
                                color: Colors.black87,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 8,
                                color: Colors.black87,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 8,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 25,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.account_circle_outlined,
                      size: 25,
                      color: Colors.black,
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
// shopping2
/*
body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    "Milan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      ),
                    ),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/pic1.jpg",
                        ),
                        radius: 25.0,
                      ),
                      Text(
                        "New in",
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/pic1.jpg",
                        ),
                        radius: 25.0,
                      ),
                      Text(
                        "Sale",
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/pic1.jpg",
                        ),
                        radius: 25.0,
                      ),
                      Text(
                        "Brand",
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/pic1.jpg",
                        ),
                        radius: 25.0,
                      ),
                      Text(
                        "Clothing",
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/pic1.jpg",
                        ),
                        radius: 25.0,
                      ),
                      Text(
                        "Shoes",
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                image: "https://telegra.ph/file/be477b88db640dbee5eb9.png",
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Modern",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 37.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36.0,
                            ),
                          ),
                        ),
                        Text(
                          "Essentials",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 41.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Discover new styles",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 60,
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.circle_rounded,
                              size: 8,
                              color: Colors.black87,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              size: 8,
                              color: Colors.black87,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              size: 8,
                              color: Colors.black87,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              size: 8,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.shopping_basket_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 25,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
*/

/*

body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image: "https://telegra.ph/file/be477b88db640dbee5eb9.png",
            ),
          ),
          Container(
            height: 330,
            margin: EdgeInsets.only(bottom: 50),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Exceptional",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Modern Clothings",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  child: Expanded(
                    child: Divider(
                      height: 25,
                      color: Colors.black,
                      thickness: 1.5,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Shop for exceptional modern clothings\nfor your everyday life",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: 210,
                    height: 45,
                    color: Colors.blueGrey,
                    child: Text(
                      "Go Shopping",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  width: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 8,
                        color: Colors.black87,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 8,
                        color: Colors.black87,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 8,
                        color: Colors.black87,
                      ),
                      Icon(
                        Icons.circle_rounded,
                        size: 8,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ), */
