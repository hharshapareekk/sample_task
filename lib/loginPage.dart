import 'package:blackcoffer_hp/numVerify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedCountryCode = '+91'; // Default country code
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 0.5,
                  spreadRadius: 0.5,
                )
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                // Country code dropdown
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                  ),
                  child: DropdownButton<String>(
                    value: selectedCountryCode,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountryCode = newValue!;
                      });
                    },
                    items: <String>['+1', '+91', '+44', '+86', '+92']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                
                // Phone number text field
                Expanded(
                  child: TextFormField(
                    controller:  phoneController,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      hintStyle: TextStyle(fontSize: 20),
                      border: InputBorder.none,
                      prefixText: '  ',
                    ),
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    onSaved: (String? mobileNumber) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 175,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NumVerify()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text('Send OTP',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 3),)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
