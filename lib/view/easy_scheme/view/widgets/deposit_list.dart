import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/easy_scheme/service/deposit_detail_model.dart';

class DepositList extends StatelessWidget {
  const DepositList({super.key, required this.schemeData});
  final EasyDepositDetailModel schemeData;
  
 


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        children: [
          Container(
            height: 29,
            width: 29,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 237, 236, 236),
              borderRadius: BorderRadius.circular(14.5),
            ),
            child: Icon(Icons.arrow_downward, color: Colors.green),
          ),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deposit",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                schemeData.date,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            schemeData.amount,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
          SizedBox(width: 10),
          Text(schemeData.gram,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: const Color.fromARGB(255, 252, 206, 3)),),
        ],
      ),
    );
  }
}
