import 'package:flutter/material.dart';
import 'package:travel_app/utils/constant.dart';

AppBar MyAppBar(BuildContext context, title) {
  return AppBar(
    iconTheme: IconThemeData(color: ksecondaryColor),
    title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
    backgroundColor: kprimaryColor,
  );
}
