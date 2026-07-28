import 'package:flutter/material.dart';
import 'package:travel_planner_app/screens/create_trip_sheet.dart';
import 'package:travel_planner_app/widgets/destination_card.dart';
import 'package:travel_planner_app/widgets/title_text.dart';
import 'package:travel_planner_app/widgets/trip_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F9FF),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: const Text(
          "Travel Planner",
          style: TextStyle(
            color: Color(0xFF0D47A1),
            fontWeight: FontWeight.bold
          )
        ),
        
        actions: [
          IconButton(
              onPressed: () {}, 
              icon: const Icon(
                Icons.notification_add_outlined,
                color: Color(0xFF2196F3),
              ))
        ],

      ),
      
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: [
              const SizedBox(height: 20),

              TitleText(title: "Hello, WanZhen"),
        
              SizedBox(height: 8),
        
              Text(
                "Where do you want to explore",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
        
              SizedBox(height: 30),
        
              SizedBox(
                width: double.infinity,
                height: 50,
        
                child: ElevatedButton.icon(
                    onPressed: () {
                      showDialog(
                          context: context,

                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                              ),
                            
                            backgroundColor: Color(0xFFF4F9FF),
                            child:  Column(
                              mainAxisSize: MainAxisSize.min,

                              children: [

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,18,0,0),
                                  child: TitleText(title: "Create New Trip"),
                                ),

                                CreateTripSheet()

                              ],
                            )
                            );
                          });
                    },
                    icon: Icon(Icons.add),
        
                  label: Text(
                    'Create New Trip',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
        
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2196F3),
                    foregroundColor: Colors.white,
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
        
              SizedBox(height: 30),
        
              TitleText(
                title: "Upcoming Trips",
              ),
        
              SizedBox(height: 15,),
        
              Container(
                width: double.infinity,
                
                padding: EdgeInsets.all(20),
                
                decoration: BoxDecoration(
                  color: Color(0xFF2196F3),
                  borderRadius: BorderRadius.circular(20)
                ),
        
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        
                  children: [
                    Text(
                      "🇯🇵 Japan Trip",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
        
                    SizedBox(height: 10,),
        
                    Text(
                      "12 Oct - 20 Oct",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
        
                    Text(
                      "7 Days",
                      style: TextStyle(
                        color: Colors.white70
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 120),


              TitleText(title: "Popular Destinations"),

              SizedBox(height: 20),

              CreateTripSheet(),

              SizedBox(
                height: 200,
                child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    children: [
                      DestinationCard(
                        icon: Icons.temple_buddhist,
                        country: 'Japan',
                        city: 'Tokyo'
                    ),


                  SizedBox(width: 20),

                  DestinationCard(
                      icon: Icons.emoji_food_beverage,
                      country: 'Korea',
                      city: 'Seoul'
                  ),

                  SizedBox(width: 20),

                  DestinationCard(
                      icon: Icons.museum,
                      country: 'China',
                      city: 'BeiJing'
                  ),
                ],
      ),
              ),

              SizedBox(height: 130),


            ],
          ),
        
        
        ),
      ),
        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
            
            selectedItemColor: Color(0xFF2196F3),

            items: [

              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home"
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.map),
                label: "Trips"
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                label: "Profile"
              ),
            ]),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2196F3),
          onPressed: () {},
        child: Icon(
            Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
