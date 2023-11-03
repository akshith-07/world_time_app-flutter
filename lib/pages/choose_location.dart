import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //async await in flutter ->In this all the process inside this method will be depending on the previous process since it takes await.
  //It will make them to wait for below process!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 140, 187, 195),
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 129, 231),
        elevation: 0,
      ),
      body: Text("Loading Page"),

      // ElevatedButton.icon(
      //   onPressed: () {
      //     setState(() {
      //       counter++;
      //     });
      //   },
      //   icon: Icon(Icons.add),
      //   label: Text("Increment the counter $counter"),
      // ),
    );
  }
}
