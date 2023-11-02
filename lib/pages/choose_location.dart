import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  void initState() {
    super.initState();
    print("Init function ran ");
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Build function ran");
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 140, 187, 195),
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 129, 231),
        elevation: 0,
      ),
      body: ElevatedButton.icon(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        icon: Icon(Icons.add),
        label: Text("Increment the counter $counter"),
      ),
    );
  }
}
