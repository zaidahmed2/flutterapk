import 'package:flutter/material.dart';
import 'ProductDetail.dart';

class Products extends StatefulWidget {
  const Products({super.key, required this.title});

  final String title;

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  calPageProductDetail() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetail(title: "Product Detail")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("My Products"),
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Align(alignment: Alignment.center,
              child: Text(
                "Latest Products",
                style: TextStyle(fontSize: 48, color: Colors.red),
              ),
            ),
            Divider(),
            Image(
                image: AssetImage('assets/images/banner-1.jpg'),
                fit: BoxFit.cover),
            Divider(),
            Expanded(
              child:    GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(8.0),
              children: [
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                image: AssetImage('assets/images/1.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product1",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    onTap: calPageProductDetail,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image(
                image: AssetImage('assets/images/2.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product2",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    onTap: calPageProductDetail,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image(
                image: AssetImage('assets/images/3.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product3",
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
                       Image(
                image: AssetImage('assets/images/4.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product4",
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
                       Image(
                image: AssetImage('assets/images/5.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product5",
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
                       Image(
                image: AssetImage('assets/images/1.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
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
            
            ),
            Divider(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
             Divider(),
            Expanded(
              child:    GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(8.0),
              children: [
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                image: AssetImage('assets/images/1.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product1",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    onTap: calPageProductDetail,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image(
                image: AssetImage('assets/images/2.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product2",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    onTap: calPageProductDetail,
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: InkWell(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Image(
                image: AssetImage('assets/images/3.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product3",
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
                       Image(
                image: AssetImage('assets/images/4.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product4",
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
                       Image(
                image: AssetImage('assets/images/5.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
                        Divider(),
                        Text(
                          "Product5",
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
                       Image(
                image: AssetImage('assets/images/1.jpg'),
                width: 50, height: 50,
                fit: BoxFit.cover),
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
            
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
