import 'package:flutter/material.dart';

void main() => runApp(Beranda());

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("DATA PANTAUAN COVID-19 PASAMAN BARAT"),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Text("Data ODP")
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Text("Data PDP")
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Text("Data Positif")
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
