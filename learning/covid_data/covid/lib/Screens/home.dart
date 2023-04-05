import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  dynamic curr;
  void fetch() async {
    print('fetch users called.');
    const url = 'https://api.rootnet.in/covid19-in/stats/latest';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      curr = json['data'];
      users = curr['regional'];
    });
    print('fetch users over.');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'COVID-19 CASES',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: fetch,),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final curr = users[index];
            final location = curr['loc'];
            final cases = curr['totalConfirmed'];
            final deaths = curr['deaths'];
            return Card(
              child: Column(
                children: [
                  Text(
                    'STATE: ' +
                        location +
                        '\n' +
                        'CONFIRMED CASES: ' +
                        cases.toString() +
                        '\n' +
                        'DEATHS: ' +
                        deaths.toString(),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
