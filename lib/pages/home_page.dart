import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceWidth, _deviceHeight;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
      body: SafeArea(
          child: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        child: _moonTripTextWidget(),
      )),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _moonTripTextWidget() {
    return Container(
      child: const Text(
        "#MoonTrip",
        style: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
