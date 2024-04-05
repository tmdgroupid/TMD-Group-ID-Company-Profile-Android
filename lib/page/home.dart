import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:tmdgroupid/page/webcompro.dart';
import 'package:tmdgroupid/page/tentangkami.dart';
import 'package:tmdgroupid/page/kontakkami.dart';
import 'package:tmdgroupid/page/kproduk.dart';
import 'package:tmdgroupid/page/brands.dart';
import 'package:tmdgroupid/page/servicepricing.dart';

class HomePageCompro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Company Profile TMD Group ID'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconButton("Website", Icons.open_in_browser, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComproWebMenuPage()),
                );
              }),
              buildIconButton("Info Brand", Icons.info, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoBrandScreen()),
                );
              }),
              buildIconButton("Service Pricing", Icons.attach_money, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ServicePricingScreen()),
                );
              }),
              buildIconButton("Catalog Product", Icons.info, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KProduk()),
                );
              }),
              buildIconButton("About Us", Icons.info_outline, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TentangKami()),
                );
              }),
              buildIconButton("Contact Us", Icons.contacts, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsScreen()),
                );
              }),
            ],
          ),
        ));
  }

  Widget buildIconButton(String label, IconData icon, Function() onPressed) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
