import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: CustomScrollView(
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 360.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
                  color: Colors.blueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.settings_outlined,
                          color: Colors.white, size: 18.0),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35.0),
                        child: Column(
                          children: [
                            Container(
                              width: 150.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 3.0),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/men.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Be',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0)),
                                Icon(Icons.blur_circular_outlined,
                                    size: 25.0, color: Colors.white),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Text('Jonathan Potricson',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22.0)),
                            SizedBox(height: 10.0),
                            Text('UI/UX Designer | Front End Developer',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0)),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_pin,
                                    color: Colors.white, size: 16.0),
                                SizedBox(width: 5.0),
                                Text('Comilla, Bangladesh',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.0)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('2332',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold)),
                            Text('Appliaction',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('732',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold)),
                            Text('Followers',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('332',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold)),
                            Text('Following',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    padding: EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0, bottom: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About Jonathon',
                            style: TextStyle(fontSize: 30.0)),
                        SizedBox(height: 15.0),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
    );
  }
}
