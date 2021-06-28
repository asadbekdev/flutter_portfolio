import 'package:asadbekdev/myProjects/walletApp/managaWalletPage.dart';
import 'package:flutter/material.dart';

bool value = false;

List db = [
  ["John Doe", "Transfered", false, "home"],
  ["Amelia Nelsen", "Added to Wallet", false, "uy"],
  ["Martin Anderson", "Sent", false, "house"],
  ["Amelia Nelsen", "Transfered", false, "kvartira"],
];

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  DateTime today = DateTime.now();
  DateTime lastDateTime = DateTime.now();
  bool checkValue = false;
  String currentValue = '';
  @override
  Widget build(BuildContext context) {
    int day = today.day;
    int month = today.month;
    int lastDay = lastDateTime.day;
    int lastMonth = lastDateTime.month;
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ManageWalletPage(),
                          ),
                        );
                      },
                      child: Icon(Icons.menu, color: Colors.white, size: 30.0)),
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
              Container(
                child: Container(
                  height: 210.0,
                  width: 330.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.orange.shade300,
                      Colors.deepOrange.shade400
                    ], begin: Alignment.centerLeft),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 20.0),
                        child: Container(
                          height: 50.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/simcard.jpg"),
                                fit: BoxFit.fill),
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, bottom: 5.0),
                        child: Text(
                          "4000   1234   5678   9010",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 10.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "VALID FROM",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                Text(
                                  "$month/$day",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: [
                                Text(
                                  "VALID THRU",
                                  style: TextStyle(
                                      fontSize: 10.0, color: Colors.white),
                                ),
                                Text(
                                  "$lastMonth/$lastDay",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 110.0,
                            ),
                            Container(
                              height: 35.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/logo.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(13.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Nikola Stojanovic",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: today,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2090),
                              ).then((value) {
                                setState(() {
                                  today = value!;
                                });
                              });
                            },
                            icon: Icon(Icons.calendar_today_outlined)),
                        Text("SEND"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDatePicker(
                                context: context,
                                initialDate: today,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2090),
                              ).then((value) {
                                setState(() {
                                  lastDateTime = value!;
                                });
                              });
                            },
                            icon: Icon(Icons.calendar_today_outlined)),
                        Text("TRANSFER"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.calendar_today_outlined)),
                        Text("PASSBOOK"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ManageWalletPage(),
                                ),
                              );
                            },
                            icon: Icon(Icons.calendar_today_outlined)),
                        Text("MORE"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transactions"),
                            OutlinedButton(
                                onPressed: () {}, child: Text("MORE")),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          child: Column(
                            children: [
                              Column(
                                children: List.generate(
                                    4,
                                    (index) => makeItem(
                                          title: "JOhn Doe",
                                          subtitle: "Transfered",
                                        )),
                              ),
                              Column(
                                children: List.generate(
                                    4,
                                    (index) => makeRadio(
                                        title: "JOhn Doe",
                                        subtitle: "Transfered",
                                        index: index)),
                              ),
                              Column(
                                children: List.generate(
                                    4,
                                    (index) => makeSwitch(
                                        title: "JOhn Doe",
                                        subtitle: "Transfered",
                                        index: index)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({title, subtitle}) {
    return CheckboxListTile(
      value: true,
      onChanged: (event) {},
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  Widget makeRadio({title, subtitle, index}) {
    return RadioListTile(
      controlAffinity: ListTileControlAffinity.trailing,
      value: db[index][3].toString(),
      onChanged: (String? event) {
        setState(() {
          currentValue = event!;
        });
      },
      title: Text(db[index][0]),
      subtitle: Text(db[index][1]),
      groupValue: currentValue,
    );
  }

  Widget makeSwitch({title, subtitle, index}) {
    return SwitchListTile(
      controlAffinity: ListTileControlAffinity.trailing,
      value: db[index][2],
      selected: db[index][2],
      selectedTileColor: Colors.black,
      // activeColor: Colors.white,
      onChanged: (event) {
        setState(() {
          db[index][2] = event;
        });
      },
      title: Text(db[index][0]),
      subtitle: Text(db[index][1]),
    );
  }
}
