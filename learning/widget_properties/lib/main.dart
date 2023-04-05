import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Testing',
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
                ),
              ),
              Text(
                'Random Image',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'PAISA CHAHIYE',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 35.0,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Text(
                      '+91 9796908345',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      color: Colors.teal,
                      Icons.email,
                      size: 35.0,
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Text(
                      'randomimage@gmail.com',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}