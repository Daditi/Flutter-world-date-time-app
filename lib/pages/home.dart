import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    //print(data);
    String bgImage = data['isdaytime'] ? 'day.png':'night.png';
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40,180, 40, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 FlatButton.icon(
                 onPressed: () {
                   Navigator.pushNamed(context, '/location');
                 },
                  icon: Icon(Icons.location_on),
                  label: Text('Location',
                  style: TextStyle(

                  ),),
                 ),
               ],
             ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(data['location'],
                  style: TextStyle(
                    fontSize: 35,
                      color: Colors.white,
                    letterSpacing: 1
                  ),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(data['time'],
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        letterSpacing: 1
                    ),),
                ],
              ),
            ],
          ),
        ),
      ),),
    );
  }
}
