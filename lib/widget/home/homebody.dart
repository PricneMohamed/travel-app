import 'package:flutter/material.dart';
import 'package:travel_app/screens/category_screen_details_trip.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/home/card_category.dart';
import '../../app.data.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  void categorySelector(ctx, id, title, imageUrl) {
    Navigator.of(ctx).pushNamed(
      CategoryScreenDetailsTrip.screenCategoryDetailsTheTripRoute,
      arguments: {'id': id, 'title': title, 'imageUrl': imageUrl},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultPadding),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: Categories_data.map(
          (category) => InkWell(
            onTap: () => categorySelector(
              context,
              category.id,
              category.title,
              category.imageUrl,
            ),
            child: CardCategory(
              id: category.id,
              title: category.title,
              imageUrl: category.imageUrl,
            ),
          ),
        ).toList(),
      ),
    );
  }
}

