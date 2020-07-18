import 'package:flutter/material.dart';
import 'package:flutterapp/pages/choose_location.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutterapp/pages/loading.dart';

import 'quote.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quote = [Quote('this is a humerours phenomenon', 'aditi'),
  Quote('i like it like that', 'aditi')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quote.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        ),
      ),
    );
  }
}


class NetNinja extends StatefulWidget {
  @override
  _NetNinjaState createState() => _NetNinjaState();
}

class _NetNinjaState extends State<NetNinja> {
  int id=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('NET NINJA ID',
        style: TextStyle(
          color: Colors.brown[900],
          letterSpacing: 3,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            id += 1;
          });
        },
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpg'),
                radius: 70,
              ),
            ),
            Divider(
              height: 70,
              color: Colors.black26,
              thickness: 1.5,
            ),
            SizedBox(height: 30),
            Text('NAME',
            style: TextStyle(
              color: Colors.teal[500],
              letterSpacing: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10),
            Text('Aditi',
              style: TextStyle(
                  color: Colors.teal[900],
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 30),
            Text('ID',
              style: TextStyle(
                  color: Colors.teal[500],
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 10,),
            Text('$id',
              style: TextStyle(
                  color: Colors.teal[900],
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black87,
                ),
                SizedBox(width: 10),
                Text('abdeshmukh2003@gmail.com',
                  style: TextStyle(
                      color: Colors.teal[900],
                      letterSpacing: 2,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),)
              ],
            ),
          ],
        ),
        ),
      );
  }
}

class HomeDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.amber[300],
        ),
        body:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                'hello there damon',
            style: TextStyle(
              color: Colors.red[900],
            ),),
            FlatButton(
              onPressed: (){},
              child: Text('presss me'),
              color: Colors.cyan[400],
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Text('i am a container'),
              color: Colors.brown[100],
            ),
          ],
        ),
//        Center(
//          child: Icon(
//            Icons.airline_seat_flat_angled,
//            color: Colors.brown[800],
//            size: 200,
//          ),
//          child:  Image.asset('assets/download.jpg'),
//          child: Text(
//            'hello ninjas',
//            style: TextStyle(
//              fontSize: 20,
//              fontWeight: FontWeight.bold,
//              color: Colors.deepPurple[400],
//              letterSpacing: 2,
//            ),
//          ),
//        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click',
            style: TextStyle(
                color: Colors.black87
            ),
          ),
          backgroundColor: Colors.amber[300],

        ),
      );
  }
}
