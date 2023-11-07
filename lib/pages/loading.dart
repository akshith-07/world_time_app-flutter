import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // String timenow = "Loading.......Retrieving the current time";

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Kolkata', url: 'Asia/Kolkata', flag: 'India.png');
    await instance.getTime();
    // setState(() {
    //   timenow = instance.time;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 94, 231),
      body: SpinKitFadingCube(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
