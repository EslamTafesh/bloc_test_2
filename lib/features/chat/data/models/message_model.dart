import 'package:equatable/equatable.dart';
import '../../domain/entities/message.dart';

class MessageModel extends Equatable {
  final String id;
  final String content;
  final String sender;
  final DateTime timestamp;
  final bool isUser;

  const MessageModel({
    required this.id,
    required this.content,
    required this.sender,
    required this.timestamp,
    required this.isUser,
  });

  factory MessageModel.fromEntity(Message message) {
    return MessageModel(
      id: message.id,
      content: message.content,
      sender: message.sender,
      timestamp: message.timestamp,
      isUser: message.isUser,
    );
  }

  Message toEntity() {
    return Message(
      id: id,
      content: content,
      sender: sender,
      timestamp: timestamp,
      isUser: isUser,
    );
  }

  @override
  List<Object?> get props => [id, content, sender, timestamp, isUser];
}