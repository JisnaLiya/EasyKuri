import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/gold_offers/controller/controller.dart';
import 'package:flutter_application_1/view/gold_offers/view/widgets/product_description.dart';
import 'package:get/state_manager.dart';

class GoldOffers extends GetView<GoldOffersController> {
  const GoldOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 22, bottom: 22, left: 100, right: 100),
        margin: EdgeInsets.all(24),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Text(
          "Agree Now",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: NetworkImage(controller.goldOfferModel.imageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Icon(Icons.access_time, color: Colors.blue),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                          ],
                        ),
                        SizedBox(height: 12),
                        Text(
                          controller.goldOfferModel.title1,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          controller.goldOfferModel.title2,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          controller.goldOfferModel.title3,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 355,
                    left: 160,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                        left: 29,
                        right: 29,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        controller.goldOfferModel.offerprice,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 400,
                    child: Container(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 0, spreadRadius: -3),
                          BoxShadow(blurRadius: 1, spreadRadius: -2),
                          BoxShadow(blurRadius: 1, spreadRadius: -2),
                          BoxShadow(blurRadius: 0, spreadRadius: 1),
                          BoxShadow(blurRadius: 22, spreadRadius: 0),
                        ],
                        color: Colors.black.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                controller.goldOfferModel.title4,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                controller.goldOfferModel.title5,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                controller.goldOfferModel.subtitle,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 99,
                            child: VerticalDivider(
                              color: Colors.white,
                              thickness: 1,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                controller.goldOfferModel.price,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Container(
                                height: 33,
                                width: 33,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(Icons.add, color: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: ProductDescription(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
