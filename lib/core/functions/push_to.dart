import 'package:flutter/material.dart';

Future<dynamic> pushTo(BuildContext context, Widget targetScreen) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => targetScreen),
  );
}
