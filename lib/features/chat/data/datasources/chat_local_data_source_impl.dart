import '../models/message_model.dart';
import 'chat_local_data_source.dart';

class ChatLocalDataSourceImpl implements ChatLocalDataSource {
  final List<MessageModel> _messages = [];

  @override
  Future<List<MessageModel>> getMessages() async {
    return _messages;
  }

  @override
  Future<void> saveMessage(MessageModel message) async {
    _messages.add(message);
  }
}