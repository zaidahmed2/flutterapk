import 'package:flutter/material.dart';
import 'Login.dart';
import 'Registration.dart';
import 'ProductDetail.dart';

class MainScreenProduct extends StatefulWidget {
  const MainScreenProduct({super.key, required this.title});

  final String title;

  @override
  State<MainScreenProduct> createState() => _MainScreenProductState();
}

class _MainScreenProductState extends State<MainScreenProduct> {

  String name="";
  calPageProductDetail() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetail(title: "Product Detail")));
  }

  calPageLogOut() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: "Login Page")));
  }

  calPage1() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: "Dash Board")));
  }

  calPage2() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RegistrationPage(title: "Dash Board")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green.shade100,
        title: TextFormField(
            decoration: InputDecoration(hintText: "Enter Product Name"),
            onChanged: (value) {
              setState(() {
                if (value.isEmpty)
                   name="";
                else
                   name=value;   
              });
            },
           ),
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
        body:  SingleChildScrollView(child:
        Container(
      height: 900,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 199, 188, 188),
              Colors.lightGreen.shade500
            ]),
      ),
      child: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/banner-1.jpg'),
                width: double.infinity,
                fit: BoxFit.cover),
            Divider(),          
            rowmain1("New Day,New Vocher","9-9","More Vocher"), 
            Divider(),
            _rowmain("25%OFF","Rs. 500","COLLECT ALL"),
            Divider(),
            _grid1(1,3,3),
            Divider(),
             rowmain1("Categories","9-9","More Vocher"), 
            Divider(),           
            _grid1(2,7,2),

          ],
        ),
      ),
    )

        // This trailing comma makes auto-formatting nicer for build methods.
        ) ,);
  }

  _rowmain(String A,String B,String C) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 100),
          child: Text(
            "${A}",
            style: TextStyle(fontSize: 33, color: Colors.red),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 50),
          child: Text(
            "${B}",
            style: TextStyle(fontSize: 33, color: Colors.green),
          ),
        ),
        MaterialButton(
          onPressed: calPage1,
          child: Text("${C}"),
          color: Colors.red,
          textColor: Colors.blue,
          minWidth: 200,
        ),
      ],
    );
  }

rowmain1(String A,String B,String C) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 100),
          child: Text(
            "${A}",
            style: TextStyle(fontSize: 33, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 50),
          child: Text(
            "${B}",
            style: TextStyle(fontSize: 33, color: Colors.amber),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 50),
          child: Text(
            "${C}",
            style: TextStyle(fontSize: 12, color: Colors.green),
          ),
        ),
       
      ],
    );
  }
  _grid1(int s,int e,int n) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: n,
      padding: EdgeInsets.all(8.0),
      children: [
        for(int i=s; i<=e; i++)...[
        Card(
          margin: EdgeInsets.all(8.0),
          child: InkWell(
              child:          
          Container(
            height: 900,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.red.shade100]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Product 1",
                  style: TextStyle(fontSize: 22, color: Colors.green),
                ),
                Divider(),
                Image(
                    image: AssetImage('assets/images/'+i.toString()+'.jpg'),
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover),
                Divider(),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Text(
                        "RS. 500",
                        style: TextStyle(fontSize: 22, color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Text(
                        "Sale",
                        style: TextStyle(fontSize: 22, color: Colors.green),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
            onTap: calPageProductDetail
          ),
        ),
        ]
      ],
    ));
  }
}
