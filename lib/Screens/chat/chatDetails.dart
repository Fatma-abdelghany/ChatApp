import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Models/ChatModel/chatMessage.dart';
class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  List<ChatMessages> chatMessageList= [
    ChatMessages(message: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessages(message: "How have you been?", messageType: "receiver"),
    ChatMessages(message: "Is there any thing wrong?", messageType: "sender"),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Row(
            children: [
              IconButton(
                onPressed: () { Navigator.pop(context); },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(width: 5,),
              CircleAvatar(
                maxRadius: 20,
                backgroundImage:AssetImage("assets/images/girl.jpeg") ,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Fatma Abdelghany",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                    Text("online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13))
                  ],
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings))
            ],
          ),

        ),
      ),
      body: Stack(
        children: [




          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write message ...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none

                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Icon(
                      Icons.send,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
