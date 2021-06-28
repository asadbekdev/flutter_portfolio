import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostPage extends StatefulWidget {
  num price;
  List productNames = [];
  List productPics = [];
  List productCounts = [0, 0];
  List subTotal = [];
  CostPage(this.price, this.productNames, this.productPics, this.productCounts,
      this.subTotal);

  @override
  _CostPageState createState() => _CostPageState();
}

class _CostPageState extends State<CostPage> {
  @override
  Widget build(BuildContext context) {
    int itemLength = 1;
    itemLength = widget.productCounts.length;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(255, 246, 246, 1.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0),
                height: 300,
                child: ListView.builder(
                  itemCount: itemLength,
                  itemBuilder: (context, index) {
                    for (int item = 0; item < itemLength; item++) {
                      if (widget.productCounts[index] != 0) {
                        List newProductCounts = [];
                        newProductCounts.add(widget.productCounts[index]);
                        // int itemLength = newProductCounts.length;
                        return Container(
                          color: Colors.white,
                          child: Card(
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.network(widget.productPics[index],
                                    width: 80),
                              ),
                              title: Text(widget.productNames[index]),
                              subtitle: Text(
                                  "Count: ${widget.productCounts[index]},"),
                              trailing: Text("\$${widget.subTotal[index]}"),
                            ),
                          ),
                        );
                      } else if (widget.productCounts[index] >= 0) {
                        return Container(
                          margin: EdgeInsets.only(top: 70.0),
                          child: Text(
                            "You didn't add nothing to card !",
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          alignment: Alignment.center,
                        );
                      }
                    }
                    return Text("");
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset.zero,
                      color: Colors.grey.shade400,
                      blurRadius: 30,
                      spreadRadius: 3.0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$${widget.price}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Taxes:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$0.0",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOTAL:",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "\$${widget.price}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Payment",
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
                    overlayColor: MaterialStateProperty.all(Colors.tealAccent)
                  ),
                  // style: TextButton.styleFrom(
                  //   backgroundColor: Colors.black,
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
