import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contact Us',
    home: ContactUsScreen(),
  ));
}

class ContactUsScreen extends StatelessWidget {
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void sendEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'tmdgroupid@gmail.com',
      query:
          'subject=${Uri.encodeFull(subjectController.text)}&body=${Uri.encodeFull(messageController.text)}',
    );
    final String url = params.toString();
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
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: subjectController,
              decoration: InputDecoration(
                labelText: 'Subject',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: messageController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Message',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: sendEmail,
              child: Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }
}
