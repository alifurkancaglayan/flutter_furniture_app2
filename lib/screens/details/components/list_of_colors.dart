import 'package:flutter/material.dart';
import 'package:flutter_furniture_app2/constants.dart';
import 'package:flutter_furniture_app2/screens/details/components/color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
           ColorDot(
            fillColor:  Color(0xFF80989A),
            isSelected: true,
          ),
           ColorDot(
            fillColor:  Color(0xFFFF5200),
          ),
           ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
