import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String url;
  String time = "";
  String flag;
  late bool isDayTime;

  WorldTime({required this.location, required this.url, required this.flag});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      // String offset = data['utc_offset'];

      //Create DateTime Object
      DateTime now = DateTime.parse(datetime.substring(0, 26));

      isDayTime = (now.hour > 6 && now.hour < 20) ? true : false;

      //Set the time
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("Caught Error -- $e");
      time = 'Could Not Retrieve the Current time';
    }
  }
}
