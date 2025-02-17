import 'package:flutter/material.dart';
import 'package:mlsa_app/constant/constants.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ongoing_event/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 20.0, top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        width: double.maxFinite,
                        child: text(
                          'Eye Spy Squid',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.5,
                      width: width * 0.8,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/ongoing_event/event_logo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Container(
                        child: text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Row(
                          children: [
                            text("Date :",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: text("29th April, 2023 (Saturday)",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            text("Venue :",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: text("Campus 14",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ]),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
            child: SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: text(
                  "Register Here",
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
