import 'package:ecommerce_app_ui/constants.dart';
import 'package:ecommerce_app_ui/models/product_test.dart';
import 'package:ecommerce_app_ui/screens/details/components/color_product.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Colors'),
              Row(
                children: const [
                  ColorProduct(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  ColorProduct(
                    color: Colors.red,
                    isSelected: false,
                  ),
                  ColorProduct(
                    color: Colors.yellow,
                    isSelected: false,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
            const TextSpan(
                text: 'Size:\n', style: TextStyle(color: kTextColor)),
            TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold))
          ])),
        )
      ],
    );
  }
}
