import 'package:flutter/material.dart';
import 'package:flutter_furniture_app2/constants.dart';
import 'package:flutter_furniture_app2/screens/products/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: builadAppBar(),
      body: Body(),
    );
  }

  AppBar builadAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text(
        "Dashboard",
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/notification.svg",
          ),
        ),
      ],
    );
  }
}
