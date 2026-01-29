import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/help_center/controller/controller.dart';
import 'package:flutter_application_1/view/help_center/view/widgets/chat_screen.dart';
import 'package:get/get.dart';

class HelpCenter extends GetView<HelpCenterController> {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
         AppBar( 
          actions: [ 
            Row(
              children: [
                Container( 
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration( 
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  
                  ),
                  child: Icon(Icons.access_time,color: Colors.blue,),
                ),
                SizedBox(width: 45,),
                Text("Chat with NOVAS",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black),),
                SizedBox(width: 45,),
                Icon(Icons.more_vert),
                SizedBox(width: 15,),
              ],
            ),
          ],
        ),
        body: Column( children: [ 
          Expanded(child: ListView( 
            children: [ 
              ChatScreen(myChatModel: controller.myChatModel[0], isMe: true,),
              ChatScreen(myChatModel: controller.myChatModel[1], isMe: false,),
              ChatScreen(myChatModel: controller.myChatModel[0], isMe: true,),
              ChatScreen(myChatModel: controller.myChatModel[1], isMe: true,),
              ChatScreen(myChatModel: controller.myChatModel[1], isMe: false,),
              ChatScreen(myChatModel: controller.myChatModel[0], isMe: true,),
              ChatScreen(myChatModel: controller.myChatModel[1], isMe: false,),
              ChatScreen(myChatModel: controller.myChatModel[0], isMe: true,),
              ChatScreen(myChatModel: controller.myChatModel[1], isMe: false,),


            ],
          )),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration( 
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(decoration: InputDecoration( 
                    hintText: "Type your message",
                    hintStyle: TextStyle(fontSize:16,fontWeight: FontWeight.w700,color: Colors.grey),
                    border: InputBorder.none,
                  ),),
                ),
                SizedBox(width: 10,),
                Icon(Icons.send,color: Colors.blue,)
              ],
            ),
          )
        ],),
      
    );
  }
}