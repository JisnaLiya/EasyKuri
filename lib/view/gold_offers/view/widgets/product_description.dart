import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/gold_offers/controller/controller.dart';
import 'package:get/state_manager.dart';

class ProductDescription extends GetView<GoldOffersController> {
  const ProductDescription({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 60),
        Text(
          controller.productDescriptionModel.title1,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 30),
        Text(
          controller.productDescriptionModel.description1,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 21),
        Center(
          child: Text(
            controller.productDescriptionModel.title,
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          controller.productDescriptionModel.title2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 12),
        Text(
          controller.productDescriptionModel.description2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 30),
        Text(
          controller.productDescriptionModel.title3,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 14),
        Text(
          controller.productDescriptionModel.description3,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 30),
        Text(
          controller.productDescriptionModel.title4,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 14),
        Text(
          controller.productDescriptionModel.description4,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
