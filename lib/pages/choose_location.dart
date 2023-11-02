import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  //async await in flutter ->In this all the process inside this method will be depending on the previous process since it takes await.
  //It will make them to wait for below process!
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Akshith';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "MERN DEVELOPER | FLUTTER DEVELOPER";
    });

    print('$username -- $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hi");
  }

  int counter = 0;
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
