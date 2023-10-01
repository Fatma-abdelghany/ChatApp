import 'package:chat_project/Screens/Home/home.dart';
import 'package:chat_project/Screens/chat/chatDetails.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
    );
  }
}
GoRouter routes=GoRouter(
  initialLocation: "/",
    routes:[
      GoRoute(path: '/',builder: (context,state)=> HomeScreen(),),
      GoRoute(path: '/chatDetails',builder: (context,state)=> ChatDetails(),),
    ]
);
