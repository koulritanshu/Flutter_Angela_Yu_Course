import 'package:flutter/material.dart';

void main()
{
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade300,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade600,
          title: const Text("Personal Information"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/deathnote/images/9/9c/Light_yagami.jpg/revision/latest?cb=20210215131239',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Light Yagami',
                 style: TextStyle(
                   fontFamily: 'final',
                   fontSize: 30.0,
                   letterSpacing: 2.5,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'a.k.a KIRA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                  letterSpacing: 3.0,
                  fontFamily: 'Montserrat-VariableFont_wght',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'SERIAL KILLER',
                style: TextStyle(
                  fontFamily: 'Handlee',
                  letterSpacing: 4.0,
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                margin: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.purple.shade800,
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    Text(
                      '+91 9086435267',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                margin: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_city_outlined,
                      color: Colors.purple.shade800,
                    ),
                    const SizedBox(
                      width: 84.0,
                    ),
                    Text(
                      'Kyoto, Japan',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
