import 'package:flutter/material.dart';
import 'package:travel_planner_app/widgets/trip_text_field.dart';


class CreateTripSheet extends StatefulWidget {

  const CreateTripSheet({super.key});

  @override
  State<CreateTripSheet> createState() => _CreateTripSheetState();
}

class _CreateTripSheetState extends State<CreateTripSheet> {

  final TextEditingController selectedStartDate = TextEditingController();
  final TextEditingController selectedEndDate = TextEditingController();


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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              readOnly: true,
              onTap: () {pickDate(selectedStartDate);},
              controller: selectedStartDate,

              decoration: InputDecoration(
                    labelText: "Start Date",
                    filled: true,
                    fillColor: Colors.white,

                    prefixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),


              ),
            ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              readOnly: true,
              onTap: () {pickDate(selectedEndDate);},
              controller: selectedEndDate,

              decoration: InputDecoration(
                  labelText: "End Date",
                  filled: true,
                  fillColor: Colors.white,

                  prefixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                  )
              ),

            ),
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
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
  
  Future<void> pickDate(
      TextEditingController controller,
      ) async {

    DateTime? start = convertToDateTime(selectedStartDate);

    DateTime? date = await showDatePicker(
        context: context, 
        initialDate: DateTime.now(),
        firstDate:  DateTime.now(),
        lastDate: DateTime(2030),
    );
    
    if (date != null) {
      setState(() {
        controller.text = "${date.day}/${date.month}/${date.year}";
      });
    }
  }

  DateTime? convertToDateTime(TextEditingController controller) {

    if (controller.text.isEmpty) {
      return null;
    }

    List<String> parts = controller.text.split('/');

    return DateTime(
      int.parse(parts[2]), // year
      int.parse(parts[1]), // month
      int.parse(parts[0]), // day
    );
  }
  
  
}