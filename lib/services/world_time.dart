import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location, time, flag, url;
  bool isdaytime;

  WorldTime({this.location, this.flag, this.url});

Future<void> getTime() async {
  try {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
//print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
//print(datetime);
//print(offset);
    DateTime dat = DateTime.parse(datetime);
//print(dat);
    dat = dat.add(Duration(hours: int.parse(offset)));
//print(dat);
    isdaytime = dat.hour> 6 && dat.hour< 7? true : false;
    time = DateFormat.jm().format(dat);
    //time = dat.toString();
    print(time);
  }
  catch(e){
    print('an error has occured $e');
    time = 'could not find location';
  }
}
}

