import 'package:flutter/material.dart';

class EducationUI extends StatefulWidget {
  @override
  _EducationUIState createState() => _EducationUIState();
}

class _EducationUIState extends State<EducationUI> {
  List subjectNames = [
    "Mathematic",
    "Biology",
    "Pysics",
    "Language",
    "Mathematic",
    "Biology",
    "Pysics",
    "Language",
    "Mathematic",
    "Biology",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset.zero,
                  color: Colors.grey,
                  blurRadius: 1.0,
                  spreadRadius: 0.0)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.purple,
            ),
            Icon(
              Icons.data_usage_rounded,
              color: Colors.grey,
            ),
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 110.0),
          child: ListView(
            children: [
              // APPBAR
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          width: 40.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=727&q=80",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Hi Rippo!",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset.zero,
                              spreadRadius: 0.5,
                              blurRadius: 15.0,
                            )
                          ]),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          size: 25.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text under the appbar
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  "Find the best\ncourse for you!",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              // horizontal teachers list
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.only(left: 20.0),
                  height: 120.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => makeStoryItem(index),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OverView(),
                  ),
                ),
              ),
              // horizontal course item
              Container(
                margin: EdgeInsets.only(top: 30.0),
                padding: EdgeInsets.only(left: 20.0),
                height: 180.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => makeCourseItem(index),
                ),
              ),
              //"popular courses" part
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Courses 🔥",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // "popular courses list"
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => makePCoursesItem(index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // horizontal teachers list item
  Widget makeStoryItem(index) {
    return Column(
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/teacher.jpeg",
              ),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            subjectNames[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

// Horizontal course list item
  Widget makeCourseItem(index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "GOLD",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  "Disc 30%",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "May 31-June 14",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "Join now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // horizontal popular courses part
  Widget makePCoursesItem(index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Physics & Maths",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.17,
            height: MediaQuery.of(context).size.width * 0.17,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.lock,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

// Course OverView Page

class OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.88),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: ListView(
            children: [
              // APPBAR
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "Course OverView",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),

              // "About Teacher" PART
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          margin: EdgeInsets.only(right: 20.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/teacher.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Marsella Jennifer",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Mathematic teacher",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "1578",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "Student Enrolled",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  "50",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "Total Classes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // "DATE" PART
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Text(
                        "June 5, 2021",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "11",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            "30",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 140.0,
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.send,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),

              // BUTTON TO ONLINE CHAT
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(),
                    ),
                  ),
                  child: Container(
                    width: 170.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      "Let's Go",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Online ChatPage
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List messageList = [];
  String? message;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              // VIDEO PART
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/teacher2.jpeg",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(140.0, 45.0),
                    bottomRight: Radius.elliptical(140.0, 45.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.black,
                              ),
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.redAccent,
                                      size: 15.0,
                                    ),
                                    Text(
                                      "Live",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20.0),
                                width: MediaQuery.of(context).size.width * 0.18,
                                height: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/boy.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 90.0),
                                width: MediaQuery.of(context).size.width * 0.15,
                                height:
                                    MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //MESSAGES LIST
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.only(top: 15.0),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: messageList.length,
                  itemBuilder: (context, index) {
                    return makeMessages(index);
                  },
                ),
              ),

              // MESSAGE INPUT FIELD
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    message = value;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Add comment",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(
                          () {
                            messageList.add(message);
                          },
                        );
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              ),

              // CALL PART
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset.zero,
                          color: Colors.grey,
                          blurRadius: 1.0,
                          spreadRadius: 0.0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.mic,
                      color: Colors.black,
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.redAccent),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call_end,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.video_call,
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

  Widget makeMessages(index) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(messageList[index]),
      alignment: Alignment.centerRight,
    );
  }
}
