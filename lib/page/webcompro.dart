import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrandController {
  final String brandName = 'PT Media Pengembangan Teknologi Indonesia Jaya';
  final String brandDescription =
      'PT Media Pengembangan Teknologi Indonesia Jaya Perusahaan Startup Teknologi berdiri sejak 31 Mei 2023 dan dirintis sejak 25-28 Desember 2018 menggunakan nama awal Tech Source Code Store';
  final String brandLogoUrl = 'asset/logo_company.png';
  final String brandWebsiteUrl =
      'https://tmdgroupid-df5f65cadb3c.herokuapp.com/';
}

class ComproWebMenuPage extends StatelessWidget {
  final BrandController brandController = BrandController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMD Group ID'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              brandController.brandLogoUrl,
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              brandController.brandName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              brandController.brandDescription,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BrandWebViewPage(brandController.brandWebsiteUrl)),
                );
              },
              child: Text('Visit Website'),
            ),
          ],
        ),
      ),
    );
  }
}

class BrandWebViewPage extends StatelessWidget {
  final String websiteUrl;

  BrandWebViewPage(this.websiteUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMD Group ID'),
      ),
      body: WebView(
        initialUrl: websiteUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ComproWebMenuPage(),
  ));
}
