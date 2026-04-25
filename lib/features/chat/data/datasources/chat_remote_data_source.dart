import '../models/message_model.dart';

abstract class ChatRemoteDataSource {
  Future<List<MessageModel>> getMessages();
  Future<void> sendMessage(MessageModel message);
}