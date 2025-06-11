import 'package:flutter/material.dart';
import 'package:mvp_chat/widgets/app_bar_header.dart';
import 'package:mvp_chat/widgets/chat_list_item.dart';

class ChatsListPage extends StatefulWidget {
  const ChatsListPage({super.key});

  @override
  State<ChatsListPage> createState() => _ChatsListPageState();
}

class _ChatsListPageState extends State<ChatsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          _buildAppHeader(),
          ...users.map((data) =>
            ChatListItem(
              avatarPath: data.avatar,
              name: data.name,
              message: data.lastMessage,
              time: data.lastDate,
            )
          ),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addNewContact(),
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildAppHeader() {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Левая иконка пользователя
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/user_avatar_32.png'), // свой путь
            // или можно NetworkImage или пустую заглушку
          ),
          Spacer(),
          AppBarHeader(label: 'Chats',),
          Spacer(),
          // Кнопка настроек
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // обработка нажатия
            },
          ),
        ],
      ),
    );
  }

  void addNewContact() {
    
  }
}

class ChatItemMockData {
  final String avatar;
  final String name;
  final String lastMessage;
  final DateTime lastDate;

  ChatItemMockData({
    required this.avatar,
    required this.name,
    required this.lastMessage,
    required this.lastDate,
  });
}

final users = <ChatItemMockData>[
  ChatItemMockData(
      avatar: 'assets/images/user_avatar_1.png',
      name: 'Akira Tanaka',
      lastMessage: 'Hi! How are you?',
      lastDate: DateTime.now(),
  ),
  ChatItemMockData(
    avatar: 'assets/images/user_avatar_2.png',
    name: 'Haruki Yamada',
    lastMessage: 'Hi! How are you?',
    lastDate: DateTime(2025, 6, 10),
  ),
  ChatItemMockData(
    avatar: 'assets/images/user_avatar_3.png',
    name: 'Uki Nakamura',
    lastMessage: 'Hi! How are you?',
    lastDate: DateTime(2025, 6, 1),
  ),
  ChatItemMockData(
    avatar: 'assets/images/user_avatar_4.png',
    name: 'Takesi Isida',
    lastMessage: 'Hi! How are you?',
    lastDate: DateTime(2025, 5, 28),
  ),
  ChatItemMockData(
    avatar: 'assets/images/user_avatar_5.png',
    name: 'Mayko Kobayasi',
    lastMessage: 'Hi! How are you?',
    lastDate: DateTime(2024, 12, 28),
  ),
];