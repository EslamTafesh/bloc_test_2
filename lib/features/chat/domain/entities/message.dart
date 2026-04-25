import 'package:equatable/equatable.dart';

class Message extends Equatable {
  final String id;
  final String content;
  final String sender;
  final DateTime timestamp;
  final bool isUser;

  const Message({
    required this.id,
    required this.content,
    required this.sender,
    required this.timestamp,
    required this.isUser,
  });

  @override
  List<Object?> get props => [id, content, sender, timestamp, isUser];
}