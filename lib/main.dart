import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/category_screen_details_trip.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/tabBar_screen.dart';
import 'package:travel_app/screens/trip_screen.dart';
import 'package:travel_app/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kprimaryColor,
        textTheme: GoogleFonts.elMessiriTextTheme()
            .copyWith(
              headlineMedium: GoogleFonts.tajawal(
                color: ksecondaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              headlineSmall: GoogleFonts.tajawal(
                color: kprimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              headlineLarge: GoogleFonts.tajawal(
                color: ksecondaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              titleLarge: GoogleFonts.playpenSansArabic(
                color: Colors.white70,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              titleMedium: GoogleFonts.playpenSansArabic(
                color: Colors.white70,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
            .copyWith(
              titleSmall: GoogleFonts.playpenSansArabic(
                color: kprimaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      locale: const Locale("ar"),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // English
        Locale('en'), // Spanish
      ],
      home: TabbarScreen(),
      routes: {
        CategoryScreenDetailsTrip.screenCategoryDetailsTheTripRoute: (ctx) =>
            CategoryScreenDetailsTrip(),
        Tripscreen.TripScrrenRoute: (ctx) => Tripscreen(),
      },
    );
  }
}
