import 'package:dewa_jam/detailpembayaran.dart';
import 'package:flutter/material.dart';
import 'package:dewa_jam/bottom_bar.dart';
import 'package:dewa_jam/main.dart';
import 'package:dewa_jam/my_profile.dart';
import 'package:dewa_jam/tab1.dart';
import 'package:dewa_jam/tab2.dart';

class detailjam extends StatelessWidget {
  final assetPath, clockprice, clockname;

  detailjam({this.assetPath, this.clockprice, this.clockname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Dewa Jam',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.redAccent),
           onPressed: () {
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => Profile())
             );
              },//Bagian Ikon tentang Pembuat

          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                  'Detail Gambar Jam',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(clockprice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(clockname,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),

            SizedBox(height: 20.0),
            Center(

                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white70
                    ),
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InputData())
                          );
                        },

                    child: Center(
                        child: Text('Masukan ke Pembayaran',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          ),

                          ),
                        )
                    )
                )
            )
          ]
      ),


      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyApp())
      );},
        backgroundColor: Colors.red,
        child: Icon(Icons.home),

      ),

    );
  }
}
