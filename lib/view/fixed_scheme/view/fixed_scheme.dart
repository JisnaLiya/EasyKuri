import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/fixed_scheme/controller/controller.dart';
import 'package:flutter_application_1/view/fixed_scheme/view/widgets/deposit_list.dart';
import 'package:get/get.dart';

class FixedScheme extends GetView<FixedSchemeController> {
  const FixedScheme({super.key});

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
                            image: NetworkImage(controller.fixedSchemeDetailModel.imageUrl),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            controller.fixedSchemeDetailModel.title,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            controller.fixedSchemeDetailModel.content,
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
                  controller.fixedSchemeDetailModel.decoration,
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
                                controller.fixedSchemeDetailModel.depositAmount,
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 60),
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 236, 236),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Scheme Amount",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        controller.fixedSchemeDetailModel.schemeAmount,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
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
                  itemCount: controller.fixedSchemeDetailModel.items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return DepositList(
                      date: controller.fixedSchemeDetailModel.items[index].date,
                      amount: controller.fixedSchemeDetailModel.items[index].amount,
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
