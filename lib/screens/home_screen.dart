import 'package:flutter/material.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/home/homeBody.dart';
import '../widget/navbar.dart';
import '../widget/myAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Homebody();
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     endDrawer: Navbar(),
  //     appBar: MyAppBar(context, kmyAppName),
  //     body: Homebody(),
  //   );
  // }
}
