import 'package:flutter/material.dart';
import 'Login.dart';
import 'Products.dart';
import 'DashBoard.dart';
import 'Registration.dart';

class DashBoardContainer extends StatefulWidget {
  const DashBoardContainer({super.key, required this.title});

  final String title;

  @override
  State<DashBoardContainer> createState() => _DashBoardContainerState();
}

class _DashBoardContainerState extends State<DashBoardContainer> {
  calPageLogOut() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: "Login Page")));
  }

  calPageProduct() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Products(title: "Products")));
  }

  calPageDashBoard() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoard(title: "Dash Board2")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Dash Board"),
          leading: PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder:(context) {
              return[
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Home")
                  ),
                   PopupMenuItem<int>(
                  value: 1,
                  child: Text("Products")
                  ),
                    PopupMenuItem<int>(
                  value: 2,
                  child: Text("DashBoardContainer")
                  ),
                   PopupMenuItem<int>(
                  value: 3,
                  child: Text("Logout")
                  )
              ];
            },
            onSelected: (value){
              if (value==0)
              {
                calPageDashBoard();
              }
              else if (value==1)
              {
                calPageProduct();
              }
               else if (value==2)
              {
                calPageDashBoard();
              }
                else if (value==3)
              {
                calPageLogOut();
              }
            },
            ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: calPageLogOut,
            ),
          ],
        ),
        body: Container(
          height: 450,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color.fromARGB(255, 213, 20, 20),
              Colors.lightGreen.shade500]
            ),
          ),
          child: GridView.count(crossAxisCount: 3,
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
        ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
