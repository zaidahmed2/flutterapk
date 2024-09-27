import 'Registration.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'Products.dart';
import 'DashBoard.dart';


class DashBoard2 extends StatefulWidget {
  const DashBoard2({super.key, required this.title});

  final String title;

  @override
  State<DashBoard2> createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2> {
  calPageLogOut() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: "Login Page")));
  }

  calPageRegistration() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RegistrationPage(title: "Registration Page")));
  }

   calPageDashBoard() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoard(title: "Dash Board")));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Dash Board"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body:GridView.count(crossAxisCount: 3,
        padding: EdgeInsets.all(8.0),
        children: [
          Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Dash Board",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
            onTap: calPageDashBoard,
            ),
            
          ),
           Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Registration",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
               onTap: calPageRegistration(),
            ),
          ),
           Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Dash Board",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Dash Board",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Dash Board",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
            ),
          ),
           Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  size: 75.0,
                  color: Colors.amber,
                  ),
                  Divider(),
                Text(
                "Dash Board",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
                ],
              ),
            ),
          )
        ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
