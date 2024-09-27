import 'dart:convert';
import 'package:flutter/material.dart';
import 'DashBoard2.dart';
import 'DashBoardContainer.dart';
import 'package:http/http.dart' as http;
import '../services/NetworkHelper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String msg = "";
  String name = "";
  String pwd = "";

  void calPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoardContainer(title: "Dash Board")));
  }

  Future<http.Response> _authLogin() async {
    final http.Response response =
        await Network().postData({"email": name, "pwd": pwd}, '/authLogin.php');

    print('response ---- ${jsonDecode(response.body)}');
    setState(() {
      var res = jsonDecode(response.body);
      setState(() {
        msg = res['msg'];
        if (msg == "Valid") calPage();
      });
    });
    return response;
  }

  void validate() {
    setState(() {
      if (name.isEmpty)
        msg = "User name must be entered";
      else if (pwd.isEmpty)
        msg = "Password must be entered";
      else {
        _authLogin();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Your preferred blue color
        title: Text(
          'Back',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea( // SafeArea to avoid system bars and top padding issues
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Only horizontal padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30), // Add a small gap from AppBar
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 1), // Reduced height between Login and form fields
                Text(
                  msg,
                  style: TextStyle(fontSize: 16, color: Colors.redAccent),
                ),
                SizedBox(height: 20),
                _buildTextField("Enter Email", (value) => name = value),
                SizedBox(height: 20),
                _buildTextField("Enter Password", (value) => pwd = value, obscureText: true),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: validate,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                  ),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: double.infinity,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, Function(String) onChanged, {bool obscureText = false}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.blue),
        filled: true,
        fillColor: Colors.grey.shade200, // Lighter grey background for the field
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        contentPadding: EdgeInsets.all(16),
      ),
      obscureText: obscureText,
      onChanged: (value) {
        setState(() {
          onChanged(value);
        });
      },
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }
}
