import 'package:flutter/material.dart';

class DepositList extends StatelessWidget {
  const DepositList({super.key, required this.date, required this.amount});
  final String date;
  final String amount;
 


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
                date,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(width: 60),
          Text(
            amount,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
