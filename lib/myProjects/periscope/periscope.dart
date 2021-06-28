import 'package:asadbekdev/myProjects/periscope/persicop2.dart';
import 'package:flutter/material.dart';

class Periscope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              child: Text(
                "Periscope",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.deepPurple[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(height: 20.0),
            Container(
              child: Text(
                "Explore the world by watching and creating live broadcasts.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.deepPurple[300],
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 350.0,
              child: Image.network(
                "https://telegra.ph/file/1439ab3c1e0a667a95d68.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Periscope2(),
                        ),
                      );
                    },
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.0,
                        vertical: 20.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Log Back In",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[100],
                      padding: EdgeInsets.symmetric(
                        horizontal: 97.0,
                        vertical: 20.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Text(
                      "By Signing up you agree to our To5 and Privacy Policy",
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.deepPurple[500],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
