import 'package:agridrone_app/constants/constants.dart';
import 'package:agridrone_app/widgets/cards.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/background.jpeg'), // Replace with your image path
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF032251),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0), // Radius for top-left corner
                  topRight:
                      Radius.circular(50.0), // Radius for top-right corner
                )),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: Text("Find the best services",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 10),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.search, color: Color(0xFF819dc9)),
                            border: InputBorder.none,
                            hintText: "Search service ...",
                            hintStyle: TextStyle(
                                color: Color(0xFF819dc9), fontSize: 18))),
                  ),
                ]),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0), // Radius for top-left corner
                topRight: Radius.circular(50.0), // Radius for top-right corner
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.45,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: Text("Recommendation",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CardWidget(
                    backgroundColor: Colors.white,
                    imagePath: "assets/background.jpeg",
                    text1: getTasks()[index],
                    text2: "Boom",
                  );
                },
              ))
            ]),
          ),
        ],
      ),
    );
  }
}
