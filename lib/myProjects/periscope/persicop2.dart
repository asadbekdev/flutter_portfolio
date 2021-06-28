import 'package:flutter/material.dart';

class Periscope2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30.0, left: 30.0, top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2 Recent",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Text(
                      "Play Unwatched (2)",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                height: 360.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0, left: 20.0),
                      width: 210.0,
                      height: 360.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://image.freepik.com/free-photo/portrait-happy-lovely-young-curly-dark-skinned-brunette-male-with-beard-keeping-raised-palms-his-chest-while-rejoicing-about-good-news-smiling-joyfully-isolated-purple_295783-7841.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "6.4 K",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    "1d ago",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 210.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13.0,
                                    backgroundImage: NetworkImage(
                                      "https://image.freepik.com/free-photo/laughing-black-man-glasses-expressing-excitement-emotional-international-student-holding-computer_197531-20167.jpg",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "John",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Hello from Orlando",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: 210.0,
                      height: 360.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://image.freepik.com/free-photo/portrait-happy-lovely-young-curly-dark-skinned-brunette-male-with-beard-keeping-raised-palms-his-chest-while-rejoicing-about-good-news-smiling-joyfully-isolated-purple_295783-7841.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "6.4 K",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    "1d ago",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 210.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13.0,
                                    backgroundImage: NetworkImage(
                                      "https://image.freepik.com/free-photo/laughing-black-man-glasses-expressing-excitement-emotional-international-student-holding-computer_197531-20167.jpg",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "John",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Hello from Orlando",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      width: 210.0,
                      height: 360.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://image.freepik.com/free-photo/portrait-happy-lovely-young-curly-dark-skinned-brunette-male-with-beard-keeping-raised-palms-his-chest-while-rejoicing-about-good-news-smiling-joyfully-isolated-purple_295783-7841.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "6.4 K",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.0),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    "1d ago",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 210.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13.0,
                                    backgroundImage: NetworkImage(
                                      "https://image.freepik.com/free-photo/laughing-black-man-glasses-expressing-excitement-emotional-international-student-holding-computer_197531-20167.jpg",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "John",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Text(
                                "Hello from Orlando",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "People You May Like",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15.0, left: 20.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                              "https://image.freepik.com/free-photo/happy-attractive-guy-blue-background_8353-10393.jpg",
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 53, left: 53.0),
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                              "https://image.freepik.com/free-photo/happy-attractive-guy-blue-background_8353-10393.jpg",
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 53, left: 53.0),
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                              "https://image.freepik.com/free-photo/happy-attractive-guy-blue-background_8353-10393.jpg",
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 53, left: 53.0),
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                              "https://image.freepik.com/free-photo/happy-attractive-guy-blue-background_8353-10393.jpg",
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 53, left: 53.0),
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage: NetworkImage(
                              "https://image.freepik.com/free-photo/happy-attractive-guy-blue-background_8353-10393.jpg",
                            ),
                            child: Container(
                              margin: EdgeInsets.only(top: 53, left: 53.0),
                              padding: EdgeInsets.all(7.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
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
