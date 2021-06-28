import 'package:asadbekdev/myProjects/cart/costPage.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  List productNames = [
    "Apple Collections",
    "Macbook Pro 16",
  ];
  List productPics = [
    "https://images.unsplash.com/photo-1494698853255-d0fa521abc6c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1518118014377-ce94f3eae7af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=679&q=80",
  ];
  List productCosts = [5000, 2000];
  List productCounts = [0, 0];
  List subTotal = [0, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25.0,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Shopping Cart",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CostPage(_totalCost(), productNames,
                      productPics, productCounts, subTotal),
                ),
              );
            },
            icon: Icon(
              Icons.check_circle_outline_sharp,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        color: Color.fromRGBO(255, 246, 246, 1.0),
        child: Column(
          children: [
            Container(
              height: 400.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, idx) {
                  return makeItem(idx);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CostPage(_totalCost(),
                            productNames, productPics, productCounts, subTotal),
                      ),
                    );
                  });
                },
                child: Text(
                  "Add to card",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all(Colors.tealAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem(index) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            width: 250.0,
            height: 230.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("${productPics[index]}"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Icon(
              Icons.circle,
              color: Colors.brown,
              size: 30.0,
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "${productNames[index]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Leather Braclet",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "\$${productCosts[index]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _minCount(index);
                    });
                  },
                  child: Icon(
                    Icons.horizontal_rule_rounded,
                    size: 22.0,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    overlayColor: MaterialStateProperty.all(Colors.tealAccent),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.5),
                  child: Text(
                    "${productCounts[index]}",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _addCount(index);
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 22.0,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    overlayColor: MaterialStateProperty.all(Colors.tealAccent),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _addCount(index) {
    productCounts[index] += 1;
    subTotal[index] = productCosts[index] * productCounts[index];
  }

  _minCount(index) {
    if (productCounts[index] != 0) {
      productCounts[index] -= 1;
      subTotal[index] = productCosts[index] * productCounts[index];
    }
  }

  _totalCost() {
    int total = 0;
    for (int item in subTotal) {
      total += item;
    }
    return total;
  }
}
