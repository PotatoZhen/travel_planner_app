import 'package:flutter/material.dart';
import 'package:travel_planner_app/widgets/trip_text_field.dart';


class CreateTripSheet extends StatefulWidget {

  const CreateTripSheet({super.key});

  @override
  State<CreateTripSheet> createState() => _CreateTripSheetState();
}

class _CreateTripSheetState extends State<CreateTripSheet> {
  @override
  Widget build(BuildContext context) {

    return

    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,

        children: [
          TripTextField(
          label: "Destination",
          icon: Icons.location_city
      ),

          TripTextField(
              label: "Start Date",
              icon: Icons.calendar_month
          ),

          TripTextField(
              label: "End Date",
              icon: Icons.calendar_month
          ),

          TripTextField(
              label: "Destination",
              icon: Icons.location_city
          ),

          TripTextField(
              label: "Notes",
              icon: Icons.note
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,12,0,0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2196F3)
                  ),
                  child: Text(
                      "Save Trip",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  )
              ),
            ),
          )

        ],
      ),
    );


  }
}