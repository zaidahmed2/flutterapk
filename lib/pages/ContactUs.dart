import 'package:flutter/material.dart';
import 'Login.dart';
import 'Registration.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key, required this.title});

  final String title;

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
        
        body: Container(
          height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(            
            ),
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
                  Text("Contact Us",
               style: TextStyle(fontSize: 48,
               color: Colors.blue),
                ),
                Divider(),
                Image(
                    image: AssetImage('assets/images/123.jpg'),
                    fit: BoxFit.cover),
                Divider(),
                Row(
                  children: [
                    Text("                  "),
                    MaterialButton(
                      onPressed: calPage2,
                      child: Text("SIGNUP"),
                      color: Colors.red,
                      textColor: Colors.blue,
                      minWidth: 200,
                    ),
                    Text("      "),
                    MaterialButton(
                      onPressed: calPage1,
                      child: Text("LOGIN"),
                      color: Colors.red,
                      textColor: Colors.blue,
                      minWidth: 200,
                    ),
                  ],
                )
              ],
            ),
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
