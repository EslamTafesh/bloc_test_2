import '../models/message_model.dart';

abstract class ChatLocalDataSource {
  Future<List<MessageModel>> getMessages();
  Future<void> saveMessage(MessageModel message);
}