import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:dewa_jam/main.dart';


class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFF202020),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:60),
                child: Text(
                  'Tentang saya',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                child:
                Image.asset('assets/profil.jpg',
                  width: 450,
                  height: 450,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 40),
                child: Text(
                  'Dewa Nyoman',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:0,left: 40),
                child: Text(
                  'Budi Sayoga Pinatih',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20,left: 40,right: 40),
                child: Text(
                  'Biasa dipanggil Domang.Seorang Mahasiswa dari Perguruan Tinggi Universitas Pendidikan Ganesha,Fakultas Teknik dan Kejuruan, Jurusan Teknik Informatika, Program Studi Pendidikan Teknik Informatika,NIM 1815051048',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80,right: 80,bottom: 0,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      color: Colors.red,

                      child: Text(
                        'Tutup',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}