import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoBrandScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Brand',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Info Brand'),
        ),
        body: BrandCarousel(),
      ),
    );
  }
}

class BrandCarousel extends StatelessWidget {
  final List<Brand> brands = [
    Brand(
      name: 'E-Wallet Tumbuhku',
      image: 'asset/tumbuhku.jpg',
      description:
          'E-Wallet Tumbuhku is the first foreign currency exchange e-wallet in Indonesia.',
      url:
          'https://play.google.com/store/apps/details?id=com.myewallettumbuhku.ewallettumbuhku',
    ),
    Brand(
      name: 'Happy Care',
      image: 'asset/HappyCare_logo.jpg',
      description:
          'Happy Care is the first disease detection healthcare application in Indonesia.',
      url:
          'https://play.google.com/store/apps/details?id=com.mediapengembanganteknologiindonesiajaya.happycare',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: brands.length,
      itemBuilder: (context, index) {
        return BrandItem(brand: brands[index]);
      },
    );
  }
}

class Brand {
  final String name;
  final String image;
  final String description;
  final String url;

  Brand(
      {required this.name,
      required this.image,
      required this.description,
      required this.url});
}

class BrandItem extends StatelessWidget {
  final Brand brand;

  BrandItem({required this.brand});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            brand.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  brand.description,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BrandWebViewPage(url: brand.url),
                      ),
                    );
                  },
                  child: Text('Kunjungi ${brand.name}'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BrandWebViewPage extends StatelessWidget {
  final String url;

  BrandWebViewPage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
