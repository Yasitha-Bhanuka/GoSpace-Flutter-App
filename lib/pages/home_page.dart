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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _spaceTripTextWidget(),
            _destinationDropDownWidget(),
          ],
        ),
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
    List<String> _items = ['Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: const Color.fromRGBO(53, 53, 53, 1.0)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: _items.first,
        onChanged: (_) {},
        items: _items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
