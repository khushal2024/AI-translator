import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

String stringResponse = '';
Map mapResponse = {};
Map dataResponse = {};
List listResponse = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future apiCall() async {
    http.Response response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      setState(() {
        //stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo api'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                elevation: 19,
                shadowColor: Colors.cyan,
                child: Container(
                  width: 200,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Image.network(listResponse[index]['avatar']),
                      Text(listResponse[index]['first_name']),
                      Text(listResponse[index]['last_name']),
                      Text(listResponse[index]['email']),
                      Text(listResponse[index]['id'].toString()),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: listResponse.length,
      ),
    );
  }
}
