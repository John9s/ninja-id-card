import 'package:flutter/material.dart';

void main() {
  runApp(NinjaCard());
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  void addLevel() {
    setState(() {
      ninjaLevel += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        floatingActionButton:
            FloatingActionButton(onPressed: addLevel, child: Icon(Icons.add)),
        appBar: AppBar(
          title: Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile-image.png'),
                  radius: 40.0,
        
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              Text('NAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
              SizedBox(
                height: 5.0,
              ),
              Text('John-Li',
                  style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20.0,
              ),
              Text('CURRENT NINJA LEVEL: ',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
              SizedBox(height: 5.0),
              Text(ninjaLevel.toString(),
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Text('johniwogu@gmail.com',
                      style: TextStyle(color: Colors.grey)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
