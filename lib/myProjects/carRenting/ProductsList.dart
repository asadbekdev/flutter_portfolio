import 'package:asadbekdev/myProjects/carRenting/db.dart';
import 'package:flutter/material.dart';
import 'products.dart';

class ProductsList extends StatelessWidget {
  static List<Product> allProducts = [];
  Widget build(BuildContext context) {
    allProducts = getInfo();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "CAR RENTING",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Tesla",
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ],
        backgroundColor: Colors.black.withOpacity(0.7),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return makeItem(
              context,
              index,
              title: allProducts[index].productName,
              year: allProducts[index].productYear,
              desc: allProducts[index].productDesc,
              image: allProducts[index].productPic,
              logo: allProducts[index].productLogo,
            );
          },
        ),
      ),
    );
  }

  Widget makeItem(ctx, index, {title, year, desc, image, logo}) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage("assets/images/" + image),
            fit: BoxFit.cover,
          ),
        ),
        height: 300.0,
        width: 300.0,
        child: Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: ListTile(
            leading: Container(
              width: 60.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                // color: Colors.brown,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  "assets/icons/" + logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                fontFamily: index == 0 ? 'Tesla' : '',
              ),
            ),
            subtitle: Text(
              year,
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(ctx, '/ProductInfo/$index');
              },
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            // title: mashinalar,
          ),
          alignment: Alignment.center,
        ),
        alignment: Alignment(0, 0.8),
      ),
      onTap: () {
        Navigator.pushNamed(ctx, '/ProductInfo/$index');
      },
    );
  }
}

List<Product> getInfo() {
  List<Product> products = [];
  for (var i = 0; i < 10; i++) {
    String image = FilesDB.PRODUCTS_NAME[i].toLowerCase() + "$i.jpeg";
    String logo = FilesDB.PRODUCTS_NAME[i].toLowerCase() + "Logo$i.jpg";
    Product newProduct = Product(
      FilesDB.PRODUCTS_NAME[i],
      FilesDB.PRODUCTS_YEAR[i],
      FilesDB.PRODUCTS_INFO[i],
      image,
      logo,
    );
    products.add(newProduct);
  }
  return products;
}
