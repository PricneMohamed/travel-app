import 'package:flutter/material.dart';
import 'package:travel_app/app.data.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/category_screen_details_trip_widget/trips_item.dart';

class CategoryScreenDetailsTripWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const CategoryScreenDetailsTripWidget({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.25,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black.withValues(alpha: 0.7),
                width: size.width,
                height: size.height,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ],
          ),
        ),
        ...Trips_data.where((cat) => cat.categories.contains(id)).map((
          category,
        ) {
          print("category.imageUrl $category.imageUrl");
          return TripsItem(
            id: category.id,
            title: category.title,
            imageUrl: category.imageUrl,
            duration: category.duration,
            isForFamilies: category.isForFamilies,
            isInSummer: category.isInSummer,
            isInWinter: category.isInWinter,
            // activities: category.activities,
            // program: category.program,
          );
        }),
      ],
    );
  }
}
