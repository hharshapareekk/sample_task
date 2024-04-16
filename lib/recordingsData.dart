import 'package:blackcoffer_hp/userProfile.dart';
import 'package:blackcoffer_hp/videoRecordScreen.dart';
import 'package:flutter/material.dart';
class RecordingsData extends StatefulWidget {
  const RecordingsData({super.key});

  @override
  State<RecordingsData> createState() => _RecordingsDataState();
}

class _RecordingsDataState extends State<RecordingsData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlueAccent,
        height: 60,
        child: Row(children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoRecordScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40,),
              child: Icon(Icons.video_camera_front_outlined,color: Colors.white,size: 40,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Icon(Icons.list_alt_outlined,color: Colors.white,size: 40,),
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