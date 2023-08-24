import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AgriDrone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "4k Video",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 19),
                        child: Row(children: [
                          CircleAvatar(
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.play_arrow)),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 4),
                            child: Text(
                              "Play Video",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ]),
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: Image(
                image: AssetImage("assets/drone.png"),
                height: 180,
              ))
        ],
      ),
    );
  }
}
