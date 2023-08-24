import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class FollowWidget extends StatelessWidget {
  const FollowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: const [
                        Positioned(
                            right: 35,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/background.jpeg"),
                            )),
                        Positioned(
                            right: 1,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/background.jpeg"),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Text(
                    "20k",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Followers",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: 2,
            color: Colors.black26,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  SizedBox(
                    width: 80,
                    height: 50,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: const [
                        Positioned(
                            right: 35,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/background.jpeg"),
                            )),
                        Positioned(
                            right: 1,
                            child: CircleAvatar(
                              radius: 22,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/background.jpeg"),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Text(
                    "330",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Following",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
