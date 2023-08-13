import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:chatbot/presentation/provider/chat/chat_provider.dart';
import 'package:chatbot/presentation/provider/chat/chat_state.dart';
import 'package:flutter/cupertino.dart';
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
  String _message = '';
  late final ChatProvider _provider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
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
      bottomNavigationBar: TextFormField(
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black45,
            enabledBorder:
                const OutlineInputBorder(borderRadius: BorderRadius.zero),
            border: const OutlineInputBorder(borderRadius: BorderRadius.zero),
            focusedBorder:
                const OutlineInputBorder(borderRadius: BorderRadius.zero),
            hintText: '질문을 입력해주세요',
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
            suffixIcon: IconButton(
              icon: const Icon(
                CupertinoIcons.arrow_up_circle,
                color: Colors.white70,
              ),
              onPressed: () {
                if (_message.isNotEmpty) {
                  _provider.chat(_message);
                  setState(() {
                    _message = '';
                  });
                }
              },
            ),
        ),
        onChanged: (message) {
          _message = message;
        },
      ),
    );
  }

  Widget get _chatHistory {
    final state = (_provider.state as ChatHistory);
    return ListView.builder(
      itemBuilder: (_, index) {
        final message = state.messages[index];
        final isAi = state.messages[index].type == MessageType.ai;
        final color = isAi ? Colors.black87 : Colors.black54;

        return Container(
          color: color,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(18),
          child: Text(message.data.content,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white)),
        );
      },
      itemCount: state.messages.length,
    );
  }
}
