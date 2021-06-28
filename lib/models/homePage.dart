import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List projects = [
    ["Shop Ui","Shopping Application UI", 300.0, "/shop"],
    ["HitMusic","Hitmusic Application UI", 220.0, "/hitmusic"],
    ["Car Renting","Car Renting App", 180.0, "/carRenting"],
    ["Payment", "Payment Application UI", 190.0, "/payment"],
    ["Donut Page","DonutPage App UI", 310.0, "/donutPage"],
    ["Periscope UI", "Periscope Ap UI", 310.0, "/periscope"],
    ["Wallet", "Wallet App UI", 200.0, "/walletPage"],
    ["Shopping Cart", "Shopping Cart UI", 190.0, "/cartPage"],
    ["Travel UI", "Travel UI", 190.0, "/travelPage"],
    ["LoginPageOrange", "Travel UI", 310.0, "/loginPageOrange"],
    ["EducationUI", "Education App UI", 230.0, "/educationUI"],
    ["Messenger UI", "Chat App UI", 310.0, "/messengerUI"],
    ["Wallet UI", "Wallet App UI", 190.0, "/walletApp"],
    ["StepperWidgeti", "StepperWidgeti App UI", 310.0, "/stepperWidgeti"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu_outlined),
          onPressed: () {},
        ),
        title: Text(
          "asadbekdev",
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Color(0xE8E8E8E8),
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xFF050405),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF050405),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pigeon Studio",
                      style: TextStyle(
                        color: Color(0xff5C595A),
                      ),
                    ),
                    Text(
                      "Ferguson wills",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Projects",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text(
                            "About",
                            style: TextStyle(color: Color(0xff5C595A)),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF2645C9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 458.0,
                margin: EdgeInsets.only(top: 15.0),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: projects.length,
                  itemBuilder: (BuildContext context, int index) {
                    return projectContainer(index);
                  },
                  staggeredTileBuilder: (index) {
                    // return StaggeredTile.count(2, index.isEven ? 2 : 1);
                    return StaggeredTile.fit(2);
                  },
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
              ),
            ],
          ),
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }

  Widget projectContainer(index) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, projects[index][3]);
      },
      child: Container(
        height: projects[index][2],
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: projects[index][2] * 0.75,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "assets/images/computer.jpeg",
                    height: projects[index][2] * 0.75,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projects[index][0],
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    projects[index][1],
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff5C595A),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
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
