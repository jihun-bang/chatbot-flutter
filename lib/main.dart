import 'package:chatbot/dependencies_injection.dart';
import 'package:chatbot/presentation/pages/chat/chat_page.dart';
import 'package:flutter/material.dart';

import 'common/firebase/firebase_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await FirebaseServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatPage(sessionId: 'test_session'),
    );
  }
}
