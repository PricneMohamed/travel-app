import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/app.data.dart';
import 'package:travel_app/screens/category_screen_details_trip.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/myAppBar.dart';
import 'package:travel_app/widget/navbar.dart';
import 'package:travel_app/widget/screen_details/my_content_trip.dart';

class ScreenTripDetails extends StatelessWidget {
  const ScreenTripDetails({super.key, required this.myTrips});

  final Trip myTrips;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(kdefaultPadding),
          child: Column(
            spacing: kdefaultPadding,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(myTrips.imageUrl),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (myTrips.isForFamilies)
                    Icon(Icons.family_restroom, color: kprimaryColor, size: 40),
                  if (myTrips.isInSummer)
                    Icon(Icons.sunny, color: kprimaryColor, size: 40),
                  if (myTrips.isInWinter)
                    Icon(Icons.water, color: kprimaryColor, size: 40),
                ],
              ),
              MyContentTrip(
                myTrips: myTrips,
                title: "الانشطة ",
                myList: myTrips.activities,
              ),
              MyContentTrip(
                myTrips: myTrips,
                title: "البرنامج ",
                myList: myTrips.program,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
