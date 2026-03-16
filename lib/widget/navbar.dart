import 'package:flutter/material.dart';
import 'package:travel_app/utils/constant.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> myMenu = {
      "/": {"name": "الصفحة الرئيسية", "icon": Icon(Icons.home)},
      "/categories": {"name": "التصنيفات", "icon": Icon(Icons.category)},
      "/trips": {"name": "الرحلات", "icon": Icon(Icons.flight)},
      "/favorites": {"name": "المفضلة", "icon": Icon(Icons.favorite)},
      "/settings": {"name": "الإعدادات", "icon": Icon(Icons.settings)},
      "/about": {"name": "حول التطبيق", "icon": Icon(Icons.info)},
    };

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: kprimaryColor),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('images/profile.png'),
            ),
            accountName: Text(
              "Prince Mohamed",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            accountEmail: Text(
              "princeyt8708@gmail.com",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Column(
            children: [
              ...myMenu.entries.map((entry) {
                return ListTile(
                  leading: entry.value["icon"],
                  title: Text(entry.value["name"]),
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}
