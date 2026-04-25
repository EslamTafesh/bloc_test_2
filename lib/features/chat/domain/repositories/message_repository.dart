import '../entities/message.dart';

abstract class ChatRepository {
  Future<List<Message>> getMessages();
  Future<void> sendMessage(Message message);
}