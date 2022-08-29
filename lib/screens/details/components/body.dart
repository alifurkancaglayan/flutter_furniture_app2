import 'package:flutter/material.dart';
import 'package:flutter_furniture_app2/constants.dart';
import 'package:flutter_furniture_app2/models/product.dart';
import 'package:flutter_furniture_app2/screens/details/components/chat_and_add_to_chart.dart';
import 'package:flutter_furniture_app2/screens/details/components/color_dots.dart';
import 'package:flutter_furniture_app2/screens/details/components/list_of_colors.dart';
import 'package:flutter_furniture_app2/screens/details/components/product_poster.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                      child: ProductPoster(
                        image: product.image!,
                      ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description!,
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            ChatAndAddToChart(),
          ],
        ),
      ),
    );
  }
}
