import 'package:flutter/material.dart';
import 'package:kuis_mobile/login.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  Future<void> _launchURL() async {
    const url = 'https://traveloka.com';
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text('Username', style: TextStyle(fontSize: 24)),
            Text(username, style: const TextStyle(fontSize: 18)),
            Padding(
              padding: const EdgeInsets.only(top: 42.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: _launchURL,
                  child: const Text('About App'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text('LogOut'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
