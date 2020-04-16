import 'dart:convert';

import 'package:corona/buat_data.dart';
import 'package:corona/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SharedPreferences pref;
  String id_user;

  dataAkun() async {
    pref = await SharedPreferences.getInstance();

    setState(() {
      id_user = pref.getString('id_user') ?? '0';
    });
  }

  @override
  void initState() {
    super.initState();
    dataAkun();
  }

  Future<List<ModelData>> _getData() async {
    String URL =
        "https://corona.pasamanbaratkab.go.id/api_corona/get_data_baru.php";
    String URL_LENGKAP;

    URL_LENGKAP = URL;

    var data = await http.get(URL_LENGKAP);

    var jsonData = json.decode(data.body);

    List<ModelData> data_masuk = [];

    for (var u in jsonData) {
      ModelData modelData = ModelData(
          u['id_data'],
          u['odp'],
          u['proses_pemantauan'],
          u['selesai_pemantauan'],
          u['pdp'],
          u['masih_dirawat'],
          u['negatif'],
          u['isolasi_pdp'],
          u['positif'],
          u['dirawat'],
          u['isolasi'],
          u['meninggal'],
          u['sembuh'],
          u['tanggal']);

      data_masuk.add(modelData);
    }

    print(data_masuk.length);

    return data_masuk;
  }

  List<ModelData> model_data_masuk;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Data Pantauan Covid-19"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.exit_to_app, color: Colors.white),
              onPressed: () {
                pref.clear();
                pref.commit();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()),
                    (Route<dynamic> route) => false);
              })
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: _getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Center(
                child: SpinKitDoubleBounce(
                  color: Colors.blueGrey,
                  size: 50.0,
                ),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  if (snapshot.data.length >= 0) {
                    return new Container(
                      padding: new EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: new Card(
                            elevation: 10,
                            child: new Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                    fit: BoxFit.cover),
                              ),
                              padding: new EdgeInsets.all(10.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text(
                                    "ODP : " + snapshot.data[index].odp,
                                    style: new TextStyle(color: Colors.blue),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, top: 10.0),
                                    child: Text(
                                      "Proses Pemantauan : " +
                                          snapshot
                                              .data[index].proses_pemantauan,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, top: 10.0),
                                    child: Text(
                                      "Selesai Pemantauan : " +
                                          snapshot
                                              .data[index].selesai_pemantauan,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, top: 10.0),
                                    child: Text(
                                      "PDP : " + snapshot.data[index].pdp,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Masih Dirawat : " +
                                          snapshot.data[index].masih_dirawat,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Negatif : " +
                                          snapshot.data[index].negatif,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Isolasi PDP : " +
                                          snapshot.data[index].isolasi_pdp,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Positif : " +
                                          snapshot.data[index].positif,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, top: 10.0),
                                    child: Text(
                                      "Dirawat : " +
                                          snapshot.data[index].dirawat,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, top: 10.0),
                                    child: Text(
                                      "Isolasi Mandiri : " +
                                          snapshot.data[index].isolasi,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Meninggal : " +
                                          snapshot.data[index].meninggal,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 30.0),
                                    child: Text(
                                      "Sembuh : " + snapshot.data[index].sembuh,
                                      style: new TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "Tanggal Input Data : " +
                                          snapshot.data[index].tanggal,
                                      style:
                                          new TextStyle(color: Colors.blueGrey),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.all(50.0),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: Card(
                            elevation: 10,
                            child: Stack(
                              children: <Widget>[
                                Opacity(
                                  opacity: 0.7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                4)),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Error",
                                    style: TextStyle(
                                        color: Color(0xFFF56D5D), fontSize: 25),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.add_comment),
              label: "Buat Data Baru",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuatData();
                }));
              })
        ],
      ),
    );
  }
}

class ModelData {
  String id_data;
  String odp;
  String selesai_pemantauan;
  String proses_pemantauan;
  String pdp;
  String masih_dirawat;
  String negatif;
  String isolasi_pdp;
  String positif;
  String dirawat;
  String isolasi;
  String meninggal;
  String sembuh;
  String tanggal;

  ModelData(
      this.id_data,
      this.odp,
      this.proses_pemantauan,
      this.selesai_pemantauan,
      this.pdp,
      this.masih_dirawat,
      this.negatif,
      this.isolasi_pdp,
      this.positif,
      this.dirawat,
      this.isolasi,
      this.meninggal,
      this.sembuh,
      this.tanggal);
}
