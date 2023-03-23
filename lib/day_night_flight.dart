import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DayNightFlightUI extends StatefulWidget {
  const DayNightFlightUI({super.key});

  @override
  State<DayNightFlightUI> createState() => _DayNightFlightUIState();
}

class _DayNightFlightUIState extends State<DayNightFlightUI> {
  Color backgroundColor = Color.fromRGBO(20, 24, 80, 1);
  Color primaryColor = Color.fromRGBO(21, 21, 34, 1);
  Color textColor = Colors.white;
  String text = 'Night';
  String departureTime = '10:00 AM';
  String arrivalTime = '08:00 PM';
  bool isNight = false;

  changeMode() {
    setState(() {
      backgroundColor = isNight
          ? Color.fromRGBO(20, 24, 80, 1) // if night mode
          : Color.fromRGBO(155, 195, 255, 1); // if day mode
      primaryColor = isNight
          ? Color.fromRGBO(21, 21, 34, 1)
          : Color.fromRGBO(232, 223, 255, 1);
      textColor = isNight ? Colors.white : Color.fromRGBO(21, 21, 34, 1);
      text = isNight ? 'Night' : 'Day';
      departureTime = isNight ? '10:00 AM' : '08:00 AM';
      arrivalTime = isNight ? '08:00 PM' : '10:00 PM';
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            color: backgroundColor,
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Emirates'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Fri, 16 Mar.2023',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '$text Flight'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                'Julien Simpson',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.indigo,
                    alignment: Alignment.center,
                    child: const Text(
                      'B',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Business Class'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Boarding: 10:00 pm'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: size.height * 0.3,
                    width: size.width,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: size.height * 0.68,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      )),
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(children: [
                          SizedBox(
                            height: size.height * 0.2,
                            child: Row(children: [
                              Expanded(
                                flex: 2,
                                child: flightDetails(
                                    departureTime,
                                    'LAX',
                                    'Los Angeles',
                                    'International Airport',
                                    'Departure',
                                    Colors.blue,
                                    Icons.flight_takeoff),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 2,
                                child: flightDetails(
                                    arrivalTime,
                                    'SYD',
                                    'Sydney Kinsford',
                                    'Smith Airport',
                                    'Arrival',
                                    Colors.amber,
                                    Icons.flight_land),
                              ),
                            ]),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flight'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'TLC987'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Seat'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '17d'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Terminal'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '01'.toUpperCase(),
                                  style: TextStyle(
                                    color: textColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/flight_img.png',
                            width: size.width * 0.6,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'A350-1000',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: textColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Seating:',
                                            style: TextStyle(color: textColor),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '366',
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Range:',
                                            style: TextStyle(color: textColor),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '16,100 km',
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Speed:',
                                            style: TextStyle(color: textColor),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '950 km/h',
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: size.width * 0.3,
                  child: GestureDetector(
                    onTap: () {
                      // toggle night and day mode
                      isNight = !isNight;

                      changeMode();
                    },
                    child: Container(
                      height: size.height * 0.22,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        Image.asset(
                          'assets/qr_code.png',
                          height: size.height * 0.18,
                        ),
                        const Text(
                          'TC2S151',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget flightDetails(String time, String short, String place, String airport,
          String status, Color color, IconData icon) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          Text(
            short,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
              Text(
                airport,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                status.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: color,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                icon,
                color: color,
              )
            ],
          ),
        ],
      );
}
