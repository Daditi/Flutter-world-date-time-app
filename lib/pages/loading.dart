import 'package:flutter/material.dart';
import 'package:flutterapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void setupWorldTime() async {
  WorldTime instance = WorldTime(location: 'Berlin' ,flag: 'berlin.png' , url: 'Europe/Berlin');
  await instance.getTime();
  //print(instance.time);
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'time': instance.time,
    'flag': instance.flag,
    'isdaytime': instance.isdaytime,
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
      backgroundColor: Colors.deepPurple[900],
        body: Center(
          child:  SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          ),
        ),
    );
  }
}
