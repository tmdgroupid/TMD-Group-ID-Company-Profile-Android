import 'package:flutter/material.dart';
//import 'dart:io';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_webview_pro/webview_flutter.dart';
//import 'package:admob_flutter/admob_flutter.dart';
//import 'dart:async';
//import 'package:fluttertoast/fluttertoast.dart';

class TentangKami extends StatefulWidget {
  @override
  Tentangkami createState() => Tentangkami();
}

class Tentangkami extends State<TentangKami> {
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Add these to dispose to cancel timer when user leaves the app

    //_interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
                alignment: Alignment.center,
                child: Text(
                  'Story: PT Media Pengembangan Teknologi Indonesia Jaya(TMD Group) pioneered from December 2018 using the business name Tech Source Code Store,on May 31 2023 inaugurated the legality of Technology Company in Bogor District. Owner and Founder PT Media Pengembangan Teknologi Indonesia is Ananda Rauf Maududi.\nVission:1. To become a trusted technology company that is independent and the best in Indonesia.\n2. To be a trusted technology company that brings good change nationally and internationally.\n3.Advancing the economy of the community in Indonesia.\nMission: 1.To be a trusted technology company that brings good changes to the country and society.\n2. To be a trusted technology company for the production of superior technology.\3. Become a trusted technology company for technology product distribution and product reseller.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                )),
          ],
        ),
      ),
    );
  }
}
