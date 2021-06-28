import 'package:asadbekdev/myProjects/dollar_rate/walletPage.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(5, 10, 101, 1),
        padding: EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    OutlinedButton(
                      child: Text(
                        "WALLET TOTAL",
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
                            builder: (context) => WalletPage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 10.0),
                    OutlinedButton(
                      child: Text(
                        "CHAT",
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
                  ],
                ),
              ),
              Container(
                height: 450.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://im0-tub-com.yandex.net/i?id=88affc94d438566a88c0a0b8360ea395&n=13",
                              ),
                              radius: 17.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                topLeft: Radius.circular(25.0),
                              ),
                            ),
                            child: Text(
                              "Hey Edwin, How may I help you?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 7.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            topLeft: Radius.circular(25.0),
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.tealAccent]),
                        ),
                        child: Text(
                          "I'd like to invest in IOTA",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 17.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://im0-tub-com.yandex.net/i?id=88affc94d438566a88c0a0b8360ea395&n=13",
                              ),
                              radius: 17.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0),
                                topLeft: Radius.circular(25.0),
                              ),
                            ),
                            child: Text(
                              "How much would you like\nto invest?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Container(
                        margin: EdgeInsets.only(right: 7.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            topLeft: Radius.circular(25.0),
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.tealAccent]),
                        ),
                        child: Text(
                          "\$5,250.00",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 24.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://im0-tub-com.yandex.net/i?id=88affc94d438566a88c0a0b8360ea395&n=13",
                              ),
                              radius: 17.0,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 7.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0),
                                )),
                            child: Text(
                              "Would you like me to send you \n an analysis on IOTA as well?",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [Colors.orange, Colors.yellow],
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.attach_money),
                            iconSize: 30.0,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "INVEST",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.teal],
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.transform_rounded),
                            iconSize: 30.0,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "TRANSFER",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.blue],
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.data_saver_off_sharp),
                            iconSize: 30.0,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "DATA",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.indigo],
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                            iconSize: 30.0,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "ALERTS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      margin: EdgeInsets.only(right: 15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_up_sharp),
                        iconSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 90.0),
                        child: Text("Your message.."),
                      ),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.only(left: 20.0),
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      color: Colors.blue,
                      iconSize: 35.0,
                    )
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
