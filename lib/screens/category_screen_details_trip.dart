import 'package:flutter/material.dart';
import 'package:travel_app/widget/category_screen_details_trip_widget/category_screen_details_trip_widget.dart';
import 'package:travel_app/widget/myAppBar.dart';
import 'package:travel_app/widget/navbar.dart';

class CategoryScreenDetailsTrip extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  const CategoryScreenDetailsTrip({
    super.key,
    // required this.id,
    // required this.title,
    // required this.imageUrl,
  });

  static const screenCategoryDetailsTheTripRoute = '/category-trips';

  @override
  Widget build(BuildContext context) {
    final routeData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final id = routeData['id']!;
    final title = routeData['title']!;
    final imageUrl = routeData['imageUrl']!;

    return Scaffold(
      endDrawer: Navbar(),
      appBar: MyAppBar(context, title),
      body: CategoryScreenDetailsTripWidget(
        id: id,
        title: title,
        imageUrl: imageUrl,
      ),
    );
  }
}
