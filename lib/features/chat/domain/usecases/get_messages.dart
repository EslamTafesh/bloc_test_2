import '../entities/message.dart';
import '../repositories/message_repository.dart';

class GetMessagesUseCase {
  final ChatRepository repository;

  GetMessagesUseCase(this.repository);

  Future<List<Message>> call() async {
    return await repository.getMessages();
  }
}