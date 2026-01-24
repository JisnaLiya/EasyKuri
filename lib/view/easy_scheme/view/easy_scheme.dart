import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/easy_scheme/controller/controller.dart';
import 'package:flutter_application_1/view/easy_scheme/view/widgets/deposit_list.dart';
import 'package:get/get.dart';

class EasyScheme extends GetView<EasySchemeController> {
  const EasyScheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          child: Image(
                            height: 82,
                            width: 140,
                            fit: BoxFit.cover,
                            image: NetworkImage(controller.easySchemeDetailModel.imageUrl),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            controller.easySchemeDetailModel.title,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            controller.easySchemeDetailModel.content,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  controller.easySchemeDetailModel.description,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deposited",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                controller.easySchemeDetailModel.depositAmount,
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end, 
                            children: [ 
                              Text("Gold",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey),),
                              Text(controller.easySchemeDetailModel.gold,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: const Color.fromARGB(255, 252, 206, 3)),),                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "History",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 24),
                ListView.builder(
                  itemCount: controller.easySchemeDetailModel.items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return DepositList(
                      schemeData: controller.easySchemeDetailModel.items[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
