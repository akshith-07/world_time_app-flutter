import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'dart:convert';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String timenow = "Loading.......Retrieving the current time";

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Kolkata', url: 'Asia/Kolkata', flag: 'India.png');
    await instance.getTime();
    setState(() {
      timenow = instance.time;
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
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(timenow),
      ),
    );
  }
}
