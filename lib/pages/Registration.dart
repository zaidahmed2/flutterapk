import 'dart:convert';
import 'package:flutter/material.dart';
import 'DashBoardContainer.dart';
import '../classes/City.dart';
import 'package:http/http.dart' as http;
import '../services/NetworkHelper.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key, required this.title});

  final String title;

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String msg = "";
  String name = "";
  String email = "";
  String password = "";
  String address = "";
  String gender = "";
  String? _selectedValue;
  String cityname = "";
  int cityid = 1;
  City? selectedCity;

  Future<http.Response> _addEmployee() async {
    final http.Response response = await Network().postData({
      "name": name,
      "email": email,
      "pwd": password,
      "address": address,
      "city": cityname
    }, '/addEmployee.php');

    print('response ---- ${jsonDecode(response.body)}');
    setState(() {
      var res = jsonDecode(response.body);
      msg = res['msg'];
    });
    return response;
  }

  List<City> cityList = [
    City(1, 'Karachi'),
    City(2, 'Lahore'),
    City(3, 'Islamabad'),
  ];

  void calPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashBoardContainer(title: "Dash Board")));
  }

  void validate() {
    setState(() {
      if (name.isEmpty) {
        msg = "Name must be entered";
      } else if (email.isEmpty) {
        msg = "Email must be entered";
      } else if (password.isEmpty) {
        msg = "Password must be entered";
      } else if (address.isEmpty) {
        msg = "Address must be entered";
      } else if (selectedCity == null) {
        msg = "City must be selected";
      } else {
        _addEmployee();
        msg = "Your record has been saved";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set background to your preferred blue
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Back icon
          onPressed: () {
            Navigator.pop(context); // Navigates back when clicked
          },
        ),
        title: Text(
          'Back', // Display 'Back' instead of 'Dashboard'
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                msg,
                style: TextStyle(fontSize: 16, color: Colors.redAccent),
              ),
              SizedBox(height: 10),
              _buildTextField("Enter User Name", (value) => name = value),
              SizedBox(height: 10),
              _buildTextField("Enter Email", (value) => email = value),
              SizedBox(height: 10),
              _buildTextField("Enter Password", (value) => password = value, obscureText: true),
              SizedBox(height: 10),
              _buildTextField("Enter Address", (value) => address = value, minLines: 3, maxLines: 5),
              SizedBox(height: 10),
              _buildGenderSelection(),
              SizedBox(height: 10),
              _buildCityDropdown(),
              SizedBox(height: 10),
              _buildRegistrationButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, Function(String) onChanged,
      {bool obscureText = false, int minLines = 1, int maxLines = 1}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.blue),
        filled: true,
        fillColor: Colors.grey.shade200, // Lighter gray background
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue border
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue border when not focused
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.blue, width: 2.0), // Blue border when focused
        ),
        contentPadding: EdgeInsets.all(16),
      ),
      obscureText: obscureText,
      minLines: minLines,
      maxLines: maxLines,
      onChanged: (value) {
        setState(() {
          onChanged(value);
        });
      },
      style: TextStyle(fontFamily: 'Poppins'),
    );
  }

  Widget _buildGenderSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Radio<String>(
                value: "Male",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value;
                    gender = value ?? "";
                  });
                },
              ),
              Text("Male", style: TextStyle(fontFamily: 'Poppins')),
              Radio<String>(
                value: "Female",
                groupValue: _selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    _selectedValue = value;
                    gender = value ?? "";
                  });
                },
              ),
              Text("Female", style: TextStyle(fontFamily: 'Poppins')),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCityDropdown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200, // Lighter gray background
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.blue, width: 2.0), // Blue border
      ),
      child: DropdownButton<City>(
        hint: Text("Select City", style: TextStyle(color: Colors.blue)),
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        value: selectedCity,
        isExpanded: true,
        underline: Container(), // Remove the underline
        onChanged: (City? value) {
          setState(() {
            selectedCity = value;
            cityname = selectedCity?.name ?? "";
            cityid = selectedCity?.id ?? 1;
          });
        },
        items: cityList.map<DropdownMenuItem<City>>((City city) {
          return DropdownMenuItem<City>(
            value: city,
            child: Text(city.name, style: TextStyle(fontFamily: 'Poppins')),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildRegistrationButton() {
    return MaterialButton(
      onPressed: validate,
      child: Text(
        "Register",
        style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
      ),
      color: Colors.blue,
      textColor: Colors.white,
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    );
  }
}
