
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialite/utils/constants.dart';

import 'status.dart';

class StatusCard extends StatelessWidget {

  final Status status;
  StatusCard({this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 6.0, 30.0),
      child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              children: [
                Image.asset(
                  '${status.image}',
                  height: 160.0,
                  width: 125.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 125.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(0, 0, 0, 0),
                          Color.fromARGB(220, 22, 22, 3)
                        ],
                      )),
                ),
                Positioned(
                    bottom: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        '${status.name}',
                        style: TextStyle(
                            fontFamily: 'Archivo',
                            color: COLOR_WHITE,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration:
                          BoxDecoration(color: COLOR_WHITE),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            '${status.thumbnail}',
                            height: 28.0,
                            width: 28.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
