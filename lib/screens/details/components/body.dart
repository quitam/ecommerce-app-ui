import 'package:ecommerce_app_ui/constants.dart';
import 'package:ecommerce_app_ui/models/product_test.dart';
import 'package:ecommerce_app_ui/screens/details/components/add_and_buy.dart';
import 'package:ecommerce_app_ui/screens/details/components/card_quantity.dart';
import 'package:ecommerce_app_ui/screens/details/components/color_and_size.dart';
import 'package:ecommerce_app_ui/screens/details/components/description.dart';
import 'package:ecommerce_app_ui/screens/details/components/product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                //height: 500,
                padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPadding + 10,
                    right: kDefaultPadding + 10),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Description(product: product),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    //card quantiy and heart icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CardQuantity(),
                        Container(
                          padding: const EdgeInsets.all(kDefaultPadding / 4),
                          height: 32,
                          width: 32,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffff6464)),
                          child: SvgPicture.asset('assets/icons/heart.svg'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    AddAndBuy(product: product)
                  ],
                ),
              ),
              ProductInfo(product: product)
            ]),
          )
        ],
      ),
    );
  }
}
