import 'package:flutter/material.dart';
import 'package:marketplace/theme/styles.dart';
import 'package:marketplace/utils/extenstion/build_extension.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localization.aiAssistant,
          style: AppTextStyles.mainAppBarTextStyle,
        ),
        actions: const [
          Icon(Icons.info_outline),
          SizedBox(width: 8),
          Icon(Icons.settings),
        ],
      ),
      body: const Column(
        children: [
          Expanded(child: SizedBox.shrink()),
          InputPanel(),
        ],
      ),
    );
  }
}

class InputPanel extends StatelessWidget {
  const InputPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: <Widget>[
          const Expanded(
            flex: 1,
            child: Icon(Icons.bubble_chart),
          ),
          const Expanded(
            flex: 5,
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
