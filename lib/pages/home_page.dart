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
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _spaceTripTextWidget(),
              _bookRideWidget(),
            ],
          ),
          Align(alignment: Alignment.centerRight, child: _astroImageWidget()),
        ]),
      )),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
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
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellesInformationWidget(),
          _bookTripButton(),
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
    List<String> _values = const [
      'Destination',
      'Mercury',
      'Venus',
      'Jupiter',
      'Saturn',
      'Uranus',
      'Neptune'
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.042),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton<String>(
        value: _values.first,
        onChanged: (_) {},
        items: _values.map((String value) {
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

  Widget _travellesInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomDropdownButton(
            values: const ['Passengers', '1', '2', '3', '4', '5'],
            width: _deviceWidth * 0.45),
        CustomDropdownButton(
            values: const ['Economy', '10k', '20k', '30k'],
            width: _deviceWidth * 0.40),
      ],
    );
  }

  Widget _bookTripButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Tour",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
