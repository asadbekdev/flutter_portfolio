import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Payment extends StatefulWidget {
  String? title;
  Payment({this.title});

  @override
  State<StatefulWidget> createState() {
    return PaymentState();
  }
}

class PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Checkout details",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 320,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 23.0,
                        vertical: 12.0,
                      ),
                      child: Text(
                        "SCAN CARD",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    20.0,
                  ),
                  bottomRight: Radius.circular(
                    20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Card holder",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    height: 70,
                  ),
                  Text(
                    "Card number",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    height: 70.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expiration date",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Code",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Text(
                                  "MM",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20.0,
                                color: Colors.grey[700],
                              )
                            ],
                          ),
                          Container(
                            width: 80.0,
                            child: Divider(
                              height: 30.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Text(
                                  "YY",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 20.0,
                                color: Colors.grey[700],
                              )
                            ],
                          ),
                          Container(
                            width: 80.0,
                            child: Divider(
                              height: 30.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 70.0,
                        height: 33,
                        child: Divider(
                          color: Colors.grey,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                  Center(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.purpleAccent,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 15.0,
                        ),
                        child: Text(
                          "FILL FORM TO CHECK OUT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
