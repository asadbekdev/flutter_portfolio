import 'package:asadbekdev/myProjects/dollar_rate/chatPage.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.attach_money),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        color: Color.fromRGBO(5, 10, 101, 1),
        padding:
            EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0, bottom: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        OutlinedButton(
                          child: Text(
                            "WALLET TOTAL",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.deepPurple,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                          child: Text(
                            "CHAT",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.white,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.add,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 35.0,
                      color: Colors.blueGrey,
                    ),
                    Text(
                      "20,623",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 13.0),
                      child: Text(
                        ".00",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 460.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange.shade700, Colors.yellow],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.euro_outlined,
                                  size: 30,
                                  color: Colors.redAccent,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$6,234.40",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.2884",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.deepPurple.shade600,
                            Colors.blue.shade400
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.flash_on,
                                  size: 30,
                                  color: Colors.indigo,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$2,340.34",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5.5202",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_up_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade400,
                            Colors.purple.shade600
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.euro_outlined,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$3,293.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "8.78911",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_up_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.teal.shade300],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.euro_outlined,
                                  size: 30,
                                  color: Colors.deepPurple,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$1,300.00",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3.2333",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange.shade800, Colors.yellow],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.euro_outlined,
                                  size: 30,
                                  color: Colors.redAccent,
                                ),
                                alignment: Alignment.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$6,234.40",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.2884",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange.shade800, Colors.yellow],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle, size: 50, color: Colors.white),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "\$6,234.40",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1.2884",
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                width: 15.0,
                                height: 35.0,
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 1.0,
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 25.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.account_balance_wallet_rounded,
                              color: Colors.white,
                            ),
                            iconSize: 30,
                          ),
                          Icon(
                            Icons.circle,
                            size: 5.0,
                            color: Colors.cyan,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.more_horiz_sharp,
                        size: 25.0,
                      ),
                      alignment: Alignment.center,
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
