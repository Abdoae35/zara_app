import 'package:flutter/material.dart';

import 'zara_sign_in_email_page.dart';

class ZaraSplashPage extends StatefulWidget {
  const ZaraSplashPage({super.key});

  @override
  State<ZaraSplashPage> createState() => _ZaraSplashPageState();
}

class _ZaraSplashPageState extends State<ZaraSplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const ZaraSignInEmailPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF9B6BFF),
      body: Center(
        child: Text(
          'ZARA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

