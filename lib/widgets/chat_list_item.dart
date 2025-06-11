import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatListItem extends StatelessWidget {
  final String avatarPath;
  final String name;
  final String message;
  final DateTime time;

  const ChatListItem({
    super.key,
    required this.avatarPath,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          // Аватар
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(avatarPath),
          ),
          const SizedBox(width: 16),
          // Имя и сообщение
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 18,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          // Время сообщения
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              formatChatTime(time),
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


String formatChatTime(DateTime date) {
  final now = DateTime.now();

  // No time
  final dateOnly = DateTime(date.year, date.month, date.day);
  final nowDateOnly = DateTime(now.year, now.month, now.day);

  if (dateOnly == nowDateOnly) {
    return DateFormat('HH:mm').format(date);
  }

  // Разница в днях
  final diff = nowDateOnly.difference(dateOnly).inDays;

  if (diff < 7) {
    // На этой неделе (но не сегодня)
    const weekDays = [
      'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'
    ];
    // В Dart 1 — это понедельник
    return weekDays[date.weekday - 1];
  }

  // Раньше — короткая дата
  return DateFormat('dd.MM.yy').format(date);
}
