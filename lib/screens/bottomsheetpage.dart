import 'package:agridrone_app/screens/webpage.dart';
import 'package:flutter/material.dart';

class MyBottomSheetPage extends StatelessWidget {
  final String text1;
  final String text2;
  MyBottomSheetPage({required this.text1, required this.text2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40,
            shadows: [Shadow(blurRadius: 2, offset: Offset(1, 1))],
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background.jpeg',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            top: 80,
            child: Text(
              "$text1\n$text2",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [Shadow(blurRadius: 2, offset: Offset(1, 1))],
              ),
            ),
          ),
          Positioned(
            top: 400,
            bottom: 100,
            left: 20,
            right: 20,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  color: Color(0xFF032251),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: TextButton(
                onPressed: () {
                  if (text1 == "Spraying Tree") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  } else {}
                },
                child: Text(
                  "Try Model",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue), // Desired background color
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
