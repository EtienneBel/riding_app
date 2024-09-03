import 'package:flutter/material.dart';
import 'package:riding_app/src/widgets/explorebyCard.dart';
import 'package:riding_app/src/widgets/textWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 40.0, right: 13.0, bottom: 13.0, left: 13.0),
      child: Column(
        children: [
          sectionHeader(),
          sectionSmoothRide(),
          sectionExploreby(),
          sectionWhereTo(),
          sectionTakeALookAround()
        ],
      ),
    );
  }

  Widget sectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
                text: "Hi! There", fontSize: 16.0, fontWeight: FontWeight.w700),
            textWidget(text: "Welcome back"),
          ],
        ),
        const Icon(Icons.notifications_none),
      ],
    );
  }

  Widget sectionSmoothRide() {
    return Container(
        color: const Color(0xFFF6F0EB),
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                    text: "Are you ready for a",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700),
                textWidget(
                    text: "smooth ride?",
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
                textWidget(text: "Relax and enjoy the ride"),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Color(0xFFD3624D)),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      padding:
                          WidgetStateProperty.all(const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      )),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                    ),
                    child: const Text('Ride with Uber'),
                    onPressed: () {
                      // Add your booking logic here
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset("images/uber-taxi.png", width: 150),
            )
          ],
        ));
  }

  Widget sectionExploreby() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          exploredbyCard(title: "Ride"),
          SizedBox(width: 15.0),
          exploredbyCard(title: "Car"),
          SizedBox(width: 15.0),
          exploredbyCard(title: "Reserve"),
        ],
      ),
    );
  }

  Widget sectionWhereTo() {
    return textWidget(
        text: "Where to ?", fontSize: 16.0, fontWeight: FontWeight.w700);
  }

  Widget sectionTakeALookAround() {
    return textWidget(
        text: "Take a look around you",
        fontSize: 16.0,
        fontWeight: FontWeight.w700);
  }
}
