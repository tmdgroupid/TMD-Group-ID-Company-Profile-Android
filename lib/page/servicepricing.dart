import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Our Service Pricing',
    home: ServicePricingScreen(),
  ));
}

class ServicePricingScreen extends StatelessWidget {
  void _launchWhatsApp() async {
    String phoneNumber = '6285692060498'; // Nomor WhatsApp penerima
    String message =
        'Hello, I would like to ask for a consultation.'; // Pesan yang ingin dikirim
    String url = 'https://wa.me/$phoneNumber/?text=${Uri.encodeFull(message)}';

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
        title: Text('Our Service Pricing'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our IT Service and Other Service:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Software Development Start Price IDR 800.000',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Package Early Founder, Package UMKU, Package Startup/Corporate, and Package Only One Projects',
            ),
            SizedBox(height: 16),
            Text(
              'IT Security Start Price IDR 500.000',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Package IT Security Software, Package IT Security Digital Forensic, and Package IT Security Personal People',
            ),
            SizedBox(height: 16),
            Text(
              'SEO Backlink Website Start Price IDR 1.000.000',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Package Runner, Package Sports Car, and Package Rocket Booster',
            ),
            SizedBox(height: 16),
            Text(
              'Business Consultant Start Price IDR 0',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Package Free Consultant, Package Starter Founder, Package VIP, and Package VIP Sultan',
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed:
                  _launchWhatsApp, // Panggil fungsi _launchWhatsApp saat tombol ditekan
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Warna background tombol
                onPrimary: Colors.white, // Warna teks tombol
              ),
              child: Text('Ask and Consult Now'),
            ),
          ],
        ),
      ),
    );
  }
}
