import 'package:flutter/material.dart';
import 'package:flutter_country/countries.dart';
import 'package:flutter_country/flutter_country.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Country',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter country"),
      ),
      body: ListView.builder(
        itemCount: Countries().all.length,
        itemBuilder: (_, int i) {
          Country c = Countries().all[i];

          return ListTile(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.network(c.flagPng),
            ),
            title: Text(c.name),
            subtitle: Text(c.alpha2Code),
            trailing: Text("+${c.callingCodes.first}"),
          );
        },
      ),
    );
  }
}
