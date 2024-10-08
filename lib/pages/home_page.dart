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
        child: _destinationDropDownWidget(),
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

  Widget _spaceTripTextWidget() {
    return Container(
      child: const Text(
        "#GoSpace",
        style: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    return Container(
      child: DropdownButton<String>(
        onChanged: (_) {},
        items: <String>['Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune']
            .map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
