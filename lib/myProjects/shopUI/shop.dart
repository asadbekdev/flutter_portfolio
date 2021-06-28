import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTap: () {
                    Navigator.pushNamed(context, '/shop2');
                  },
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
      ),
    );
  }
}
