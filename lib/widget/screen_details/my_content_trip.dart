import 'package:flutter/material.dart';
import 'package:travel_app/models/trip.dart';
import 'package:travel_app/utils/constant.dart';

class MyContentTrip extends StatelessWidget {
  const MyContentTrip({
    super.key,
    required this.myTrips,
    required this.title,
    required this.myList,
  });

  final Trip myTrips;
  final String title;
  final List<String> myList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      width: double.infinity,
      padding: EdgeInsets.all(kdefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: kprimaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
          Container(
            margin: EdgeInsets.only(top: kdefaultPadding),
            // height: 350,
            child: Column(
              children: myList.asMap().entries.map((ele) {
                return Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: ListTile(
                      leading: Stack(
                        alignment: Alignment.center,

                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: kprimaryColor,
                              shape: BoxShape.circle,
                            ),
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "${ele.key + 1}",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      title: Text(
                        "${myList[ele.key]} ",
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                );
                ;
              }).toList(),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
