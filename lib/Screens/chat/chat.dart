import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Models/ChatModel/chatModel.dart';
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  List<ChatUsersModel> chatUsersList=[
      ChatUsersModel( name: 'Fatma Abdelghany', messageText: 'Hey where are you?', imageURL: "assets/images/girl.jpeg", time: 'Now'),
      ChatUsersModel( name: 'Ahmed Mohammed', messageText: 'Can you please share the file?', imageURL: 'assets/images/man.png', time: 'Yesterday'),
      ChatUsersModel( name: 'Hend Ali', messageText: 'How are you?', imageURL: 'assets/images/girl.jpeg', time: '18 March'),
      ChatUsersModel( name: 'Khalid Ahmed', messageText: 'will update you in evening', imageURL: 'assets/images/smile.jpeg', time: '23 April'),
      ChatUsersModel( name: 'Fatma Abdelghany', messageText: 'Hey where are you?', imageURL: 'assets/images/girl.jpeg', time: 'Now'),
      ChatUsersModel( name: 'Ahmed Mohammed', messageText: 'Can you please share the file?', imageURL: 'assets/images/man.png', time: 'Yesterday'),
      ChatUsersModel( name: 'Hend Ali', messageText: 'How are you?', imageURL: 'assets/images/girl.jpeg', time: '18 March'),
      ChatUsersModel( name: 'Khalid Ahmed', messageText: 'will update you in evening', imageURL: 'assets/images/smile.jpeg', time: '23 April'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
       SingleChildScrollView(
           child: 
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold)),
                     Container(
                       padding: EdgeInsets.all(8),
                       height: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.pink[50],
                         ),
                         child: Row(
                           children: [
                             Icon(Icons.add,color: Colors.pink,size: 20,),
                             SizedBox(width: 2,),
                             Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                           ],
                         )
                     ),

                   ],
                 ),
               ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "search",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade100,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.grey.shade100
                  )


              ),
            )
          ),
        ),

               ListView.builder(
                  shrinkWrap: true,
                 padding: EdgeInsets.only(top: 16),
                 // physics: NeverScrollableScrollPhysics(),
                 itemCount: chatUsersList.length,
                 itemBuilder: (BuildContext context, int index) {
                   return ConversationList(chatUsersList: chatUsersList , index: index,);
                 },

               )
             ],
           )
       ),


    );
  }
}

class ConversationList extends StatelessWidget {
  int index;
   ConversationList({
    super.key,
    required this.chatUsersList,
    required this.index,
  });

  final List<ChatUsersModel> chatUsersList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        context.go("/chatDetails");
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage:AssetImage(chatUsersList[index].imageURL) ,

                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(chatUsersList[index].name,style: TextStyle(fontSize: 16)),
                          SizedBox(height: 10),
                          Text(chatUsersList[index].messageText,style: TextStyle(fontSize: 13,color: Colors.grey.shade600, )),

                        ],
                      ),
                    ),
                  ),

                ],

              ),
            ),
            Text(chatUsersList[index].time,style: TextStyle(fontSize: 12,color: Colors.grey.shade600, )),
          ],
        ),
      ),
    );
  }
}
