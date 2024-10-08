import 'package:flutter/material.dart';
import 'package:moon_trip/widgets/custom_dropdown_button.dart';

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
            _bookRideWidget(),
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

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellesInformationWidget(),
        ],
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
    return CustomDropdownButton(
        values: const ['Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'],
        width: _deviceWidth);
  }

  Widget _travellesInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomDropdownButton(
            values: const ['1', '2', '3', '4', '5'],
            width: _deviceWidth * 0.45),
        CustomDropdownButton(
            values: const ['Economy', '10k', '20k', '30k'],
            width: _deviceWidth * 0.40),
      ],
    );
  }
}
