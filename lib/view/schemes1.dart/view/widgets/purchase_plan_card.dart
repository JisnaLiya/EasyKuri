import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/schemes1.dart/controller/controller.dart';
import 'package:get/get.dart';

class PurchasePlanCard extends GetView<SchemesController> {
  const PurchasePlanCard({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Row( 
                      children: [ 
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          child: Image(
                            height: 82,
                            width: 130,
                            fit: BoxFit.cover,
                            image: NetworkImage(controller.purchasePlanModel.imageUrl)),
                        ),
                        SizedBox(width: 16),
                        Column(children: [
                          Text(controller.purchasePlanModel.title,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black)),
                          Text(controller.purchasePlanModel.subtitle,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black),),
                        ],)
                      ],
                    );
  }
}