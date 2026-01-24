import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/schemes1.dart/controller/controller.dart';
import 'package:flutter_application_1/view/schemes1.dart/view/widgets/purchase_plan_card.dart';
import 'package:get/get.dart';

class Schemes extends GetView<SchemesController> {
  const Schemes({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      floatingActionButton:Container( 
        padding: EdgeInsets.only(top: 22,bottom: 22,left: 32,right: 32),
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(color: Colors.white,width: 3),
          borderRadius: BorderRadius.circular(36),
        ),
        width: double.infinity,
        child:Row( 
          children: [ 
            Text("Join Now",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
            SizedBox(width: 150,),
            Icon(Icons.add,color: Colors.white,)
          ],
        )
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: PurchasePlanCard(),
                  ),
                  SizedBox(height: 24),
                  Text(controller.schemesDetailModel.description,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                  SizedBox(height: 24),
                  Text(controller.schemesDetailModel.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.black),),
                  SizedBox(height: 24,),
                  Text(controller.schemesDetailModel.subtitle1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(height: 14,),
                  Text(controller.schemesDetailModel.content1,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                  SizedBox(height: 24,),
                  Text(controller.schemesDetailModel.subtitle2,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(height: 14,),
                  Text(controller.schemesDetailModel.content2,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                  SizedBox(height: 24,),
                  Text(controller.schemesDetailModel.subtitle3,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(height: 14,),
                  Text(controller.schemesDetailModel.content3,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                  SizedBox(height: 24,),
                  Text(controller.schemesDetailModel.subtitle4,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(height: 14,),
                  Text(controller.schemesDetailModel.content4,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                ],
              ),
            ),
          ),
        ),
    );

  }
}