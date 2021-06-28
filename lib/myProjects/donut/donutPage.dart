import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DonutPageState();
  }
}

class DonutPageState extends State<DonutPage> {
  int _cost = 0;
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 6,
                    blurRadius: 8,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 24.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Single Item",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.menu_rounded,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              width: 325.0,
              alignment: Alignment.center,
              padding: EdgeInsets.all(13.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 6,
                    blurRadius: 8,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        iconSize: 24.0,
                        color: Colors.black,
                      ),
                      Container(
                          width: 200,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://media.istockphoto.com/photos/fresh-homemade-donuts-with-various-toppings-picture-id180820338?k=6&m=180820338&s=612x612&w=0&h=JnKwUTKz6SzwUnVQsoo_IdNt8Zco8btTWzr5RyChroo=',
                              fit: BoxFit.fill,
                            ),
                          )),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            return _liked();
                          });
                        },
                        icon: _like(),
                        iconSize: 24.0,
                        color: Colors.green[700],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Chocolate Donut",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            "This colorful donut is nothing spectacular,",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "but definitely gets the job done",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    child: Divider(
                      color: Colors.grey,
                      height: 50,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ $_cost",
                          style: TextStyle(
                            fontSize: 33.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    return _minus();
                                  });
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 5.0,
                                  shadowColor: Colors.grey,
                                ),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Text(
                                "$_count",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.black,
                                ),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    return _plus();
                                  });
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 5.0,
                                  shadowColor: Colors.grey,
                                ),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.0,
                                vertical: 10.0,
                              ),
                            ),
                            child: Text(
                              "Add to cart",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 6,
                    blurRadius: 8,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.home_repair_service_outlined,
                    size: 20.0,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 24.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _likee = Icon(Icons.favorite_border);

  _like() {
    return _likee;
  }

  _liked() {
    _likee = Icon(Icons.favorite);
    return _like();
    // if (_like() == Icon(Icons.favorite_border)) {
    //   _likee = Icon(Icons.favorite);
    //   return _like();
    // } else {
    //   _likee = Icon(Icons.favorite_border);
    //   return _like();
    // }
  }

  _plus() {
    _cost += 2;
    _count += 1;
  }

  _minus() {
    if (_cost != 0 && _count != 0) {
      _cost -= 2;
      _count -= 1;
    }
  }
}
