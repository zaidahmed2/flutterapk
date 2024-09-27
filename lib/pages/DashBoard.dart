import 'package:flutter/material.dart';
import 'Login.dart';
import 'Products.dart';
import 'DashBoard2.dart';
import 'Registration.dart';
import 'ProductDetail.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key, required this.title});

  final String title;

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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

  calPageDashBoard2() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoard2(title: "Dash Board2")));
  }

  calPageProductDetail() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetail(title: "Product Detail")));
  }

  calPageRegistration() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RegistrationPage(title: "Registration Page")));
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
                  child: Text("DashBoard")
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
                calPageDashBoard2();
              }
              else if (value==1)
              {
                calPageProduct();
              }
               else if (value==2)
              {
                calPageDashBoard2();
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
        body:Container(
          height: 800,
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
          child:   ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Dash Board",
                style: TextStyle(fontSize: 48, color: Colors.red),
              ),
            ),
            Divider(),
            Image(
                image: AssetImage('assets/images/banner-1.jpg'),
                fit: BoxFit.cover),
            Divider(),
            Card(
                child: ListTile(
              leading: Icon(Icons.home, size: 48, color: Colors.lightBlue),
              title: Text("Home",
                  style: TextStyle(fontSize: 22, color: Colors.red)),
              subtitle: Text("Dash Board"),
              trailing:
                  Icon(Icons.next_plan, size: 48, color: Colors.lightBlue),
              onTap: calPageDashBoard2,
            )),
            Card(
              child: ListTile(
                leading: Icon(Icons.propane_outlined,
                    size: 48, color: Colors.lightBlue),
                title: Text("Products",
                    style: TextStyle(fontSize: 22, color: Colors.red)),
                subtitle: Text("My Products"),
                trailing:
                    Icon(Icons.next_plan, size: 48, color: Colors.lightBlue),
                onTap: calPageProduct,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.report_gmailerrorred,
                    size: 48, color: Colors.lightBlue),
                title: Text("Registration",
                    style: TextStyle(fontSize: 22, color: Colors.red)),
                subtitle: Text("Registration Products"),
                trailing:
                    Icon(Icons.next_plan, size: 48, color: Colors.lightBlue),
                onTap: calPageRegistration,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.login, size: 48, color: Colors.lightBlue),
                title: Text("Log Out",
                    style: TextStyle(fontSize: 22, color: Colors.red)),
                subtitle: Text("Log Out"),
                trailing:
                    Icon(Icons.next_plan, size: 48, color: Colors.lightBlue),
                onTap: calPageLogOut,
              ),
            ),
              Card(
              child: ListTile(
                leading: Icon(Icons.accessible_forward_rounded, size: 48, color: Colors.lightBlue),
                title: Text("Product Detail",
                    style: TextStyle(fontSize: 22, color: Colors.red)),
                subtitle: Text("Product Detail"),
                trailing:
                    Icon(Icons.next_plan, size: 48, color: Colors.lightBlue),
                onTap: calPageProductDetail,
              ),
            )
          ],
        )
        ) 
        
      
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
