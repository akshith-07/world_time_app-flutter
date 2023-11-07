import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    String bgImage = (data['isDayTime']) ? 'day.png' : 'night.png';

    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/night.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 230.0, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () => {
                        Navigator.pushNamed(context, '/chooselocation'),
                      },
                  icon: Icon(Icons.edit_location),
                  label: Text("Edit Location")),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 45.0,
                  letterSpacing: 2.0,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
