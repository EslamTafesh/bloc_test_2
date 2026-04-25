import '../entities/message.dart';
import '../repositories/message_repository.dart';

class SendMessageUseCase {
  final ChatRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(Message message) async {
    return await repository.sendMessage(message);
  }
}