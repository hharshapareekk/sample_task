import 'package:blackcoffer_hp/recordingsData.dart';
import 'package:blackcoffer_hp/videoRecordScreen.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String userName = "Harsha Pareek";
  String userDescription =
      "Hi, I am Harsha from India. I am interested in competitive programming and have developed a few apps in Flutter. You can reach out to me from my LinkedIn profile, GitHub, or through my Mail ID.";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/harsha.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            userName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 3),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Text(
              userDescription,
              style: TextStyle(fontSize: 16, letterSpacing: 2),
            ),
          ),
          SizedBox(height: 30),
          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoRecordScreen()),
                );
              },
              child: Icon(Icons.video_camera_front_outlined, color: Colors.white, size: 40),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecordingsData()),
                );
              },
              child: Icon(Icons.list_alt_outlined, color: Colors.white, size: 40),
            ),
            Icon(Icons.face_4, color: Colors.white, size: 40),
          ],
        ),
      ),
    );
  }
}
