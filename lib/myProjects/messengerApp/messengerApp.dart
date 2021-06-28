import 'package:asadbekdev/myProjects/messengerApp/db.dart';
import 'package:asadbekdev/myProjects/messengerApp/user.dart';
import 'package:flutter/material.dart';

class MessengeApp extends StatefulWidget {
  @override
  _MessengeAppState createState() => _MessengeAppState();
}

class _MessengeAppState extends State<MessengeApp> {
  Color titleTextColor = Color(0xff1B1A57);

  static List<User> allUsers = [];
  @override
  Widget build(BuildContext context) {
    allUsers = getInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // PINNED CHATS APPBAR
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // APPBAR TITLE
                  Text(
                    "Pinned Chats",
                    style: TextStyle(
                      color: titleTextColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Plus Jakarta',
                    ),
                  ),
                  // APPBAR PICTURE
                  Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/teacher.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            // PINNED CHATS AREA
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 13.0, right: 16.0, left: 16.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 3 / 2.3,
                ),
                scrollDirection: Axis.vertical,
                itemCount: allUsers.length,
                itemBuilder: (context, index) => makePinnedChatsItem(index),
              ),
            ),
            // SLIDING SHEET
            Container(
                // child: ,
            ),
          ],
        ),
      ),
    );
  }

  // PINNED CHATS AREA ITEM
  Widget makePinnedChatsItem(index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.325,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // PINNED USER BLOCK IMAGE
              Container(
                margin: EdgeInsets.only(right: 8.0),
                width: 46.0,
                height: 46.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/${allUsers[index].pic}",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50)),
              ),
              // PINNED USER BLOCK NAME
              Container(
                width: 72.0,
                height: 46.0,
                child: Text(
                  "${allUsers[index].name}",
                  style: TextStyle(
                    color: titleTextColor,
                    fontSize: 14.0,
                    fontFamily: 'Plus Jakarta',
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "${allUsers[index].msg}...",
            ),
          ),
        ],
      ),
    );
  }

  List<User> getInfo() {
    List<User> users = [];
    for (var i = 0; i < DB.UserNames.length; i++) {
      User newUser = User(
        DB.UserNames[i],
        DB.User_Pictures[i],
        DB.User_Bio[i],
        DB.User_Job[i],
        DB.User_Messages[i],
      );
      users.add(newUser);
    }
    return users;
  }
}
