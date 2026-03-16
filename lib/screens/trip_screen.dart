import 'package:flutter/material.dart';
import 'package:travel_app/app.data.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/screens/category_screen_details_trip.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/myAppBar.dart';
import 'package:travel_app/widget/navbar.dart';
import '../widget/screen_details/ScreenTripDetails.dart';

class Tripscreen extends StatelessWidget {
  const Tripscreen({super.key});

  static const TripScrrenRoute =
      '${CategoryScreenDetailsTrip.screenCategoryDetailsTheTripRoute}/trip-details';

  @override
  Widget build(BuildContext context) {
    final MyRouteInTripScreen =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final id = MyRouteInTripScreen?["id"];

    final Trip myTrips = Trips_data.firstWhere((trip) => trip.id == id);

    print("myTrips => ${myTrips.id}");

    return Scaffold(
      endDrawer: Navbar(),
      appBar: MyAppBar(context, myTrips.title),
      body: ScreenTripDetails(myTrips: myTrips),
    );
  }
}
