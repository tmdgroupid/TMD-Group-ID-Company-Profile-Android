import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class KProduk extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'name': 'ROS(Robot Operating System) Cars Stick Control',
      'url': 'https://wa.me/p/6721311431224762/6285692060498',
    },
    {
      'name': 'Paket Early Founder Software Development Service',
      'url': 'https://wa.me/p/6470353883010289/6285692060498',
    },
    {
      'name': 'Paket UMKU Software Development Service',
      'url': 'https://wa.me/p/6285003758234754/6285692060498',
    },
    {
      'name': 'Paket Startup/Corporate Software Development Service',
      'url': 'https://wa.me/p/6415370311888573/6285692060498',
    },
    {
      'name': 'Other Catalog Product',
      'url': 'https://wa.me/c/6285692060498',
    },
  ];

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Katalog Produk"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product['name']!),
            onTap: () => _launchURL(product['url']!),
          );
        },
      ),
    );
  }
}
