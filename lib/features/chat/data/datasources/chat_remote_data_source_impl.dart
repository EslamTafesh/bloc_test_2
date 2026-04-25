import '../models/message_model.dart';
import 'chat_remote_data_source.dart';

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  @override
  Future<List<MessageModel>> getMessages() async {
    await Future.delayed(const Duration(seconds: 1));
    return [];
  }

  @override
  Future<void> sendMessage(MessageModel message) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}