import 'package:flutter/material.dart';

class TripTextField extends StatelessWidget {

  final String label;
  final IconData icon;

  const TripTextField({
    super.key,
    required this.label,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),
      ),
    );
  }
}
