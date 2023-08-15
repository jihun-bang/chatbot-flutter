import 'package:chatbot/data/models/chat/chat_history.dart';
import 'package:chatbot/domain/entities/chat/chat_intent.dart';
import 'package:chatbot/domain/entities/chat/chat_state.dart';
import 'package:chatbot/presentation/provider/chat/chat_provider.dart';
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
  final _chatFieldController = TextEditingController();
  final _scrollController = ScrollController();
  String _message = '';
  late final ChatProvider _provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.position.addListener(() {
        print(_scrollController.position.maxScrollExtent);
        _scrollToBottom();
      });
    });
  }

  @override
  void dispose() {
    _chatFieldController.dispose();
    _scrollController.dispose();

    super.dispose();
  }

  Future<void> _sendMessage() async {
    if (_message.isNotEmpty) {
      _provider.processIntent(ChatIntent.send(message: _message));
      setState(() {
        _message = '';
      });
      Future.delayed(const Duration(milliseconds: 100)).then((_) {
        _scrollToBottom();
      });
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic);
  }

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
            LoadingState() => const Center(child: CircularProgressIndicator()),
            ErrorState() => const Center(child: Text('에러 발생')),
            _ => _chatHistory,
          };
        }),
      ),
      bottomNavigationBar: TextFormField(
        controller: _chatFieldController..text = _message,
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
              _sendMessage();
            },
          ),
        ),
        onChanged: (message) {
          _message = message;
        },
        onEditingComplete: () {
          _sendMessage();
        },
      ),
    );
  }

  Widget get _chatHistory {
    final state = (_provider.state as CompleteState);
    return ListView.builder(
      controller: _scrollController,
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
