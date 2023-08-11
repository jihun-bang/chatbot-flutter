import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:chatbot/presentation/provider/chat/chat_provider.dart';
import 'package:chatbot/presentation/provider/chat/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../dependencies_injection.dart';

class ChatPage extends StatefulWidget {
  final String sessionId;

  const ChatPage({
    super.key,
    required this.sessionId,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final ChatProvider _provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('AI 채팅'),
      ),
      body: ChangeNotifierProvider<ChatProvider>(
        create: (_) {
          _provider = ChatProvider(sl(), widget.sessionId);
          return _provider;
        },
        child: Consumer<ChatProvider>(builder: (_, __, ___) {
          return switch (_provider.state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Error() => const Center(child: Text('에러 발생')),
            _ => _chatHistory,
          };
        }),
      ),
      bottomNavigationBar: SizedBox(height: 48, child: TextFormField()),
    );
  }

  Widget get _chatHistory {
    return ListView.builder(
      itemBuilder: (_, index) {
        final state = (_provider.state as ChatHistory);
        final message = state.messages[index];
        final alignment = state.messages[index].type == MessageType.ai
            ? Alignment.centerLeft
            : Alignment.centerRight;

        return Container(
          alignment: alignment,
          child: Text(message.data.content,
              style: Theme.of(context).textTheme.bodyMedium),
        );
      },
    );
  }
}