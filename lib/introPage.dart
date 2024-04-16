import 'package:blackcoffer_hp/loginPage.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
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
          Text(
            'HELLO',
            style: TextStyle(fontSize: 50, letterSpacing: 10),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Text(
              'Hello This Is Harsha From India. Please Hit Login to continue',
              style: TextStyle(letterSpacing: 3),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },
            child: Container(
              width: 200,
              height: 70,
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 36, letterSpacing: 10, color: Colors.white),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
