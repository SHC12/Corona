

import 'package:corona/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:progress_dialog/progress_dialog.dart';


void main() => runApp(BuatData());

class BuatData extends StatefulWidget {
  @override
  _BuatDataState createState() => _BuatDataState();
}

class _BuatDataState extends State<BuatData> {
  ProgressDialog pr;

  String nama;
  String instansi;
  String id_user;

  TextEditingController tf_odp = new TextEditingController();
  TextEditingController tf_pp = new TextEditingController();
  TextEditingController tf_sp = new TextEditingController();

  TextEditingController tf_pdp = new TextEditingController();
  TextEditingController tf_md = new TextEditingController();
  TextEditingController tf_negatif = new TextEditingController();
  TextEditingController tf_isolasi_pdp = new TextEditingController();

  TextEditingController tf_positif = new TextEditingController();
  TextEditingController tf_dirawat = new TextEditingController();
  TextEditingController tf_isolasi = new TextEditingController();
  TextEditingController tf_meninggal = new TextEditingController();
  TextEditingController tf_sembuh = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tf_odp = new TextEditingController(text: "0");
    tf_pdp = new TextEditingController(text: "0");
    tf_md = new TextEditingController(text: "0");
    tf_sp = new TextEditingController(text: "0");
    tf_negatif = new TextEditingController(text: "0");
    tf_isolasi_pdp = new TextEditingController(text: "0");
    tf_positif = new TextEditingController(text: "0");
    tf_pp = new TextEditingController(text: "0");
    tf_dirawat = new TextEditingController(text: "0");
    tf_isolasi = new TextEditingController(text: "0");
    tf_meninggal = new TextEditingController(text: "0");
    tf_sembuh = new TextEditingController(text: "0");
  }

  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context, type: ProgressDialogType.Normal);

    //Optional
    pr.style(
      message: 'Mohon Tunggu...',
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      progressWidget: CircularProgressIndicator(),
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progressTextStyle: TextStyle(
          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
      messageTextStyle: TextStyle(
          color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600),
    );

    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Buat Data Baru"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: new Container(
            padding: new EdgeInsets.all(12.0),
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  controller: tf_odp,
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Orang Dalam Pemantauan (ODP)",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  controller: tf_pp,
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Proses Pemantauan",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),

                new TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: tf_sp,
                  minLines: 1,
                  maxLines: 5,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Selesai Pemantauan",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  minLines: 1,
                  maxLines: 5,
                  controller: tf_pdp,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Pasien Dalam Pengawasan (PDP)",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  minLines: 1,
                  maxLines: 5,
                  controller: tf_md,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Masih Dirawat",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  controller: tf_negatif,
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Negatif",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  controller: tf_isolasi_pdp,
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Isolasi PDP",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: tf_positif,
                  minLines: 1,
                  maxLines: 5,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Positif",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: tf_dirawat,
                  minLines: 1,
                  maxLines: 5,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Dirawat",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  minLines: 1,
                  maxLines: 5,
                  controller: tf_isolasi,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Isolasi Mandiri",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: tf_meninggal,
                  minLines: 1,
                  maxLines: 5,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Meninggal",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
                ),
                new TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: tf_sembuh,
                  minLines: 1,
                  maxLines: 5,
                  decoration: new InputDecoration(
                      hintText: "Jumlah",
                      labelText: "Sembuh",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
                //buildGridView(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: new Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[],
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    String odp = tf_odp.text;
                    String pdp = tf_pdp.text;
                    String sp = tf_sp.text;
                    String negatif = tf_negatif.text;
                    String positif = tf_positif.text;
                    String pp = tf_pp.text;
                    String meninggal = tf_meninggal.text;
                    String sembuh = tf_sembuh.text;
                    String dirawat = tf_dirawat.text;

                    if (odp != '' &&
                        pdp != '' &&
                        sp != '' &&
                        negatif != '' &&
                        positif != '' &&
                        pp != '' &&
                        meninggal != '' &&
                        sembuh != '') {
                      _startUploading();
                    } else {
                      messageAllertGagal(
                          'Data tidak boleh ada yang kosong', 'Gagal');
                    }
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text('Kirim Data',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
//      resizeToAvoidBottomPadding: false,
    );
  }

  Uri apiUrl = Uri.parse(
      'https://corona.pasamanbaratkab.go.id/api_corona/upload_data_baru.php');

  Future<Map<String, dynamic>> _uploadImage() async {
    setState(() {
      pr.show();
    });

    final imageUploadRequest = http.MultipartRequest('POST', apiUrl);

    imageUploadRequest.fields['odp'] = tf_odp.text;
    imageUploadRequest.fields['proses_pemantauan'] = tf_pp.text;
    imageUploadRequest.fields['selesai_pemantauan'] = tf_sp.text;

    imageUploadRequest.fields['pdp'] = tf_pdp.text;
    imageUploadRequest.fields['masih_dirawat'] = tf_md.text;
    imageUploadRequest.fields['negatif'] = tf_negatif.text;
    imageUploadRequest.fields['isolasi_pdp'] = tf_isolasi_pdp.text;

    imageUploadRequest.fields['positif'] = tf_positif.text;
    imageUploadRequest.fields['dirawat'] = tf_dirawat.text;
    imageUploadRequest.fields['isolasi'] = tf_isolasi.text;
    imageUploadRequest.fields['meninggal'] = tf_meninggal.text;
    imageUploadRequest.fields['sembuh'] = tf_sembuh.text;

    try {
      final streamedResponse = await imageUploadRequest.send();
      final response = await http.Response.fromStream(streamedResponse);
      if (response.statusCode != 200) {
        return null;
      }
      final Map<String, dynamic> responseData = json.decode(response.body);
      String code = responseData['status'];
      if (code == 1) {
        _resetState();
        return responseData;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  void _resetState() {
    setState(() {
      pr.hide();
    });
  }

  void _startUploading() async {
    final Map<String, dynamic> response = await _uploadImage();

    if (response == null) {
      pr.hide();
      messageAllert('Data Berhasil Dikirim', 'Sukses');
      setState(() {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen()),
              (Route<dynamic> route) => false);
      });
    } else {
      messageAllertGagal('Data tidak boleh ada yang kosong', 'Gagal');
    }
  }

  messageAllert(String msg, String ttl) {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            title: Text(ttl),
            content: Text(msg),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Column(
                  children: <Widget>[
                    Text('Ok'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  messageAllertGagal(String msg, String ttl) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            title: Text(ttl),
            content: Text(msg),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Column(
                  children: <Widget>[
                    Text('Oke'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
