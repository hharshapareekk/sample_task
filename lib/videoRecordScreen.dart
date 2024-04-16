import 'package:blackcoffer_hp/recordingsData.dart';
import 'package:blackcoffer_hp/userProfile.dart';
import 'package:flutter/material.dart';

class VideoRecordScreen extends StatefulWidget {
  const VideoRecordScreen({super.key});

  @override
  State<VideoRecordScreen> createState() => _VideoRecordScreenState();
}

class _VideoRecordScreenState extends State<VideoRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Align(alignment: Alignment.centerLeft,child: Text('Hello Harsha,',style: TextStyle(fontSize: 30,letterSpacing: 3),)),
            SizedBox(height: 20,),
            Align(alignment: Alignment.centerLeft,child: Text('Do You Wish To Record A Video ?',style: TextStyle(fontSize: 18,letterSpacing: 3),)),
          SizedBox(height: 30,),
          Center(
             child: Image.asset('assets/images/RecVideo.png',width: 280,height: 280,),         ),
          
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        height: 60,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,),
            child: Icon(Icons.video_camera_front_outlined,color: Colors.white,size: 40,),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecordingsData()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(Icons.list_alt_outlined,color: Colors.white,size: 40,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Icon(Icons.face_4,color: Colors.white,size: 40,),
            ),
          ),

        ],),
      ),
    );
  }
}