import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:compro/page/home.dart';
import 'package:tmdgroupid/page/loading.dart';

void main() {
  runApp(TMDGroupIDApp());
}

class TMDGroupIDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Company Profile TMD Group ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingPage(),
    );
  }
}
