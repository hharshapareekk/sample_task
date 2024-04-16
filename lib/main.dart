import 'package:blackcoffer_hp/loginPage.dart';
import 'package:flutter/material.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
 runApp(const MaterialApp(
  
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
 ));
}