import '../../domain/entities/message.dart';
import '../../domain/repositories/message_repository.dart';
import '../datasources/chat_local_data_source.dart';
import '../models/message_model.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatLocalDataSource localDataSource;

  ChatRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Message>> getMessages() async {
    final models = await localDataSource.getMessages();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> sendMessage(Message message) async {
    final model = MessageModel.fromEntity(message);
    await localDataSource.saveMessage(model);
  }
}