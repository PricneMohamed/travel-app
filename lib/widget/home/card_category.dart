import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.6),
            ),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineLarge),
        ],
      ),
    );
  }
}
