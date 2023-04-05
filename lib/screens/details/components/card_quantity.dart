import 'package:ecommerce_app_ui/constants.dart';
import 'package:flutter/material.dart';

class CardQuantity extends StatefulWidget {
  const CardQuantity({super.key});

  @override
  State<CardQuantity> createState() => _CardQuantityState();
}

class _CardQuantityState extends State<CardQuantity> {
  int productQuan = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            iconData: Icons.remove,
            onTap: () {
              if (productQuan > 1) {
                setState(() {
                  productQuan--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            productQuan.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlineButton(
          iconData: Icons.add,
          onTap: () {
            setState(() {
              productQuan++;
            });
          },
        )
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData iconData, required VoidCallback onTap}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
        onPressed: onTap,
        child: Icon(
          iconData,
          color: kTextColor,
        ),
      ),
    );
  }
}
