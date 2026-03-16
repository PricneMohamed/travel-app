import 'package:flutter/material.dart';
import 'package:travel_app/screens/favorite_screen.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/utils/constant.dart';
import 'package:travel_app/widget/myAppBar.dart';
import 'package:travel_app/widget/navbar.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

final List<Widget> myBody = [HomeScreen(), FavoriteScreen()];

class _TabbarScreenState extends State<TabbarScreen> {
  int _indexScreen = 0;

  void _select_tab(int index) {
    setState(() {
      _indexScreen = index;
      print(_indexScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context, "مغامر"),
      endDrawer: Navbar(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kprimaryColor,
        selectedItemColor: Colors.white,
        currentIndex: _indexScreen,
        onTap: _select_tab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "التصنيفات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "المفضلة ",
          ),
        ],
      ),
      body: myBody[_indexScreen],
    );
  }
}
