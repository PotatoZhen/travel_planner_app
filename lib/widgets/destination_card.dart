import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {

  final IconData icon;
  final String country;
  final String city;

  const DestinationCard({
    super.key,
    required this.icon,
    required this.city,
    required this.country
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 12,
                  //offset: Offset(0, 3)
              )
            ]
        ),

        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(
                icon,
                size: 48,
                color: Colors.blue,
              ),

              SizedBox(height: 10),

              Text(
                country,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),
              ),

              Text(
                city,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                ),
              ),
            ]
        )

    );
  }
}
