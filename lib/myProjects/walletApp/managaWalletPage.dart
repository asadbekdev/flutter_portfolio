import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List database = [
  ["EUR - 500.00", "Euro", false],
  ["USD - 1050.00", "United States Dollar", false],
  ["ZAR - 500.00", "South Africa Rand", false],
  ["INR - 500.00", "Indian Rupee", false],
];

List database_two = [
  ["EUR - 500.00", "Euro", false],
  ["USD - 1050.00", "United States Dollar", false],
  ["ZAR - 500.00", "South Africa Rand", false],
  ["INR - 500.00", "Indian Rupee", false],
];

class ManageWalletPage extends StatefulWidget {
  const ManageWalletPage({Key? key}) : super(key: key);

  @override
  _ManageWalletPageState createState() => _ManageWalletPageState();
}

class _ManageWalletPageState extends State<ManageWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.pinkAccent.shade200,
                Colors.indigo.shade400,
              ],
            ),
          ),
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.white, size: 30.0),
                  Text("WALLET",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Icon(Icons.notifications_none_outlined,
                      color: Colors.white, size: 30.0),
                ],
              ),
              SizedBox(height: 15.0),
              makeContainer(),
              SizedBox(height: 20.0),
              makeContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeContainer() {
    return Container(
      height: 300.0,
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0, top: 25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: database.length,
          itemBuilder: (context, index) => makeListTile(index: index)),
    );
  }

  Widget makeListTile({index}) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
        ),
        child: Icon(Icons.flag,color: Colors.white,),
      ),
      title: Text(database[index][0]),
      subtitle: Text(database[index][1]),
      trailing: CupertinoSwitch(
          value: database[index][2],
          onChanged: (event) {
            setState(() {
              database[index][2] = event;
            });
          }),
    );
  }
}