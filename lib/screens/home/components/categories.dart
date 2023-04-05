import 'package:ecommerce_app_ui/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hand bag',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Jacket',
    'Coat'
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: categories[index].length.toDouble() * 9,
                color: selectedIndex == index ? Colors.red : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
