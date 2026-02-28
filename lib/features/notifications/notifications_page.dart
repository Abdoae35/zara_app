import 'package:flutter/material.dart';
import 'package:zara_app/core/styles/app_colors.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Notifications",
         style: TextStyle(fontWeight: FontWeight.w600 ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_none,
              size: 90,
              color: Colors.grey,
            ),
            const SizedBox(height: 20),
            const Text(
              "No Notifications yet",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              child: const Text("Explore Categories"),
            )
          ],
        ),
      ),
    );
  }
}