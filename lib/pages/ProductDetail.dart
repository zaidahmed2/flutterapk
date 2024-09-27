import 'package:flutter/material.dart';
import 'Login.dart';
import 'DashBoard.dart';
import 'DashBoard2.dart';
import 'Registration.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, required this.title});

  final String title;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  calPageLogOut() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: "Login Page")));
  }

  calPageProduct() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DashBoard(title: "Products")));
  }

  calPageProductDetail2() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoard2(title: "Dash Board2")));
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
                  child: Text("ProductDetail")
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
                calPageProductDetail2();
              }
              else if (value==1)
              {
                calPageProduct();
              }
               else if (value==2)
              {
                calPageProductDetail2();
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
              colors: [Color.fromARGB(255, 199, 188, 188),
              Colors.lightGreen.shade500]
            ),
          ),
          child:   ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Product Detail",
                style: TextStyle(fontSize: 48, color: Colors.red),
              ),
            ),
            Divider(),
            Image(
                image: AssetImage('assets/images/banner-1.jpg'),
                fit: BoxFit.cover),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.jpg',
                                    ),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/2.jpg'),
                  radius: 40.0,
                ),
                                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3.jpg'
                  
                  ),
                  radius: 40.0,
                ),
                                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/4.jpg'),
                  radius: 40.0,
                )
              ],
            ),
            Text(
                "It’s going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso.'",
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),

              Row(
                children: [
                  Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                    Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                    Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                    Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                    Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                    Icon(Icons.wb_sunny,
                  color: Colors.orange,),
                ],
              )
            ],
        )
        ) 
        
      
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
