import 'package:flutter/material.dart';

class Nagari extends StatefulWidget {
  @override
  _NagariState createState() => _NagariState();
}

class _NagariState extends State<Nagari> {


  TextEditingController odp1 = new TextEditingController();
  TextEditingController odp2 = new TextEditingController();
  TextEditingController odp3 = new TextEditingController();
  TextEditingController odp4 = new TextEditingController();
  TextEditingController odp5 = new TextEditingController();
  TextEditingController odp6 = new TextEditingController();
  TextEditingController odp7 = new TextEditingController();
  TextEditingController odp8 = new TextEditingController();
  TextEditingController odp9 = new TextEditingController();
  TextEditingController odp10 = new TextEditingController();
  TextEditingController odp11 = new TextEditingController();
  TextEditingController odp12 = new TextEditingController();
  TextEditingController odp13 = new TextEditingController();
  TextEditingController odp14 = new TextEditingController();
  TextEditingController odp15 = new TextEditingController();
  TextEditingController odp16 = new TextEditingController();
  TextEditingController odp17 = new TextEditingController();
  TextEditingController odp18 = new TextEditingController();
  TextEditingController odp19 = new TextEditingController();

  TextEditingController sp1 = new TextEditingController();
  TextEditingController sp2 = new TextEditingController();
  TextEditingController sp3 = new TextEditingController();
  TextEditingController sp4 = new TextEditingController();
  TextEditingController sp5 = new TextEditingController();
  TextEditingController sp6 = new TextEditingController();
  TextEditingController sp7 = new TextEditingController();
  TextEditingController sp8 = new TextEditingController();
  TextEditingController sp9 = new TextEditingController();
  TextEditingController sp10 = new TextEditingController();
  TextEditingController sp11 = new TextEditingController();
  TextEditingController sp12 = new TextEditingController();
  TextEditingController sp13 = new TextEditingController();
  TextEditingController sp14 = new TextEditingController();
  TextEditingController sp15 = new TextEditingController();
  TextEditingController sp16 = new TextEditingController();
  TextEditingController sp17 = new TextEditingController();
  TextEditingController sp18 = new TextEditingController();
  TextEditingController sp19 = new TextEditingController();


  TextEditingController pdp1 = new TextEditingController();
  TextEditingController pdp2 = new TextEditingController();
  TextEditingController pdp3 = new TextEditingController();
  TextEditingController pdp4 = new TextEditingController();
  TextEditingController pdp5 = new TextEditingController();
  TextEditingController pdp6 = new TextEditingController();
  TextEditingController pdp7 = new TextEditingController();
  TextEditingController pdp8 = new TextEditingController();
  TextEditingController pdp9 = new TextEditingController();
  TextEditingController pdp10 = new TextEditingController();
  TextEditingController pdp11 = new TextEditingController();
  TextEditingController pdp12 = new TextEditingController();
  TextEditingController pdp13 = new TextEditingController();
  TextEditingController pdp14 = new TextEditingController();
  TextEditingController pdp15 = new TextEditingController();
  TextEditingController pdp16 = new TextEditingController();
  TextEditingController pdp17 = new TextEditingController();
  
  TextEditingController positif = new TextEditingController();
  TextEditingController t = new TextEditingController();



  



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Data Baru"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  new Padding(padding: EdgeInsets.fromLTRB(6, 12, 12, 12)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Nama Nagari"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 60,
                      ),
                      Text("Aia Bangih"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Batahan"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Desa Baru"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Parit"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Sungai Aua"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Ujung Gading"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Muara Kiawai"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Rabi Jonggor"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Talu"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Sinuruik"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Kajai"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Aua Kuning"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Aia Gadang"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Lingkuang Aua"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Kapa"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Koto Baru"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Sasak"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Katiagan"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 90,
                      ),
                      Text("Kinali"),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("ODP"),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            controller: t,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width / 10,
                          child: TextField(
                            controller: t,
                            keyboardType: TextInputType.phone,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text("SP"),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text("PDP"),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Positif"),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Meninggal"),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  Column(
                    children: <Widget>[
                      Text("Sembuh"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
