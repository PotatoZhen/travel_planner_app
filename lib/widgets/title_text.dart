import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {

  final String title;

  const TitleText({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0D47A1)
      ),
    );
  }
}
