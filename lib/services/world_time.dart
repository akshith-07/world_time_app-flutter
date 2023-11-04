import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String url;
  String time = "";
  String flag;

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

      //Set the time
      time = now.toString();
    } catch (e) {
      print("Caught Error -- $e");
      time = 'Could Not Retrieve the Current time';
    }
  }
}
