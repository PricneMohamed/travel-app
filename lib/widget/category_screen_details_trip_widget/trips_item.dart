import 'package:flutter/material.dart';
import 'package:travel_app/screens/trip_screen.dart';
import 'package:travel_app/utils/constant.dart';

class TripsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  // final List<String> activities;
  // final List<String> program;
  final int duration;
  final bool isForFamilies;
  final bool isInSummer;
  final bool isInWinter;

  const TripsItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
    // required this.activities,
    // required this.program,
    required this.duration,
    required this.isForFamilies,
    required this.isInSummer,
    required this.isInWinter,
  });

  void tripSelector(
    BuildContext ctx, {
    id,
    // title,
    // imageUrl,
    // activities,
    // program,
    // duration,
    // isForFamilies,
    // isInSummer,
    // isInWinter,
  }) {
    Navigator.of(ctx).pushNamed(
      Tripscreen.TripScrrenRoute,
      arguments: {
        'id': id,
        // 'title': title,
        // 'imageUrl': imageUrl,
        // 'activities': activities,
        // 'program': program,
        // 'duration': duration,
        // 'isForFamilies': isForFamilies,
        // 'isInSummer': isInSummer,
        // 'isInWinter': isInWinter,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        tripSelector(
          context,
          id: id,
          // title: title,
          // imageUrl: imageUrl,
          // activities: activities,
          // program: program,
          // duration: duration,
          // isForFamilies: isForFamilies,
          // isInSummer: isInSummer,
          // isInWinter: isInWinter,
        );
      },
      child: Card(
        margin: EdgeInsets.all(kdefaultPadding),
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        color: kprimaryColor,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: size.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  width: size.width,
                  height: size.height * 0.2,
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(kdefaultPadding),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(kdefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.timelapse, color: Colors.white70),
                      Text(
                        "المدة $duration",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      if (isForFamilies)
                        Icon(Icons.family_restroom, color: Colors.white70),
                      if (isInSummer) Icon(Icons.sunny, color: Colors.white70),
                      if (isInWinter) Icon(Icons.water, color: Colors.white70),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
