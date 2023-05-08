// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

// ignore: use_key_in_widget_constructors
class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}


class _PointsCounterState extends State<PointsCounter> {
  void addOnepoint() {}
  int teamApoints = 0;
  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 196, 211),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            " Points Counter",
            style: TextStyle(fontSize: 40, fontFamily: "Pacifico"),
          ),
          backgroundColor: const Color(0xff672771),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    //height: 600,
                    //width: 170,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "Team A",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 180,
                          child: FittedBox(
                            child: Text(
                              '$teamApoints',
                              style: const TextStyle(fontSize: 150),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            teamApoints++;
                            setState(() {});
                          },
                          child: const Text("Add 1 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            teamApoints += 2;
                            setState(() {});
                          },
                          child: const Text("Add 2 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            teamApoints += 3;
                            setState(() {});
                          },
                          child: const Text("Add 3 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 25.0),
                    height: 550,
                    child: const VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      endIndent: 30.0,
                    )),
                Expanded(
                  child: Container(
                    //width: 170,
                    //height: 600,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "Team B",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 180,
                          child: FittedBox(
                            child: Text(
                              '$teamBpoints',
                              style: const TextStyle(fontSize: 150),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            teamBpoints++;
                            setState(() {});
                          },
                          child: const Text("Add 1 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            teamBpoints += 2;
                            setState(() {});
                          },
                          child: const Text("Add 2 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          child: const Text("Add 3 point",
                              style: TextStyle(fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff672771),
                            padding: const EdgeInsets.all(13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: const Text("Reset", style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(155, 0, 0, 0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 60.0, vertical: 13.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
