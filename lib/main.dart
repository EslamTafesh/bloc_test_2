import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/chat/data/datasources/chat_local_data_source_impl.dart';
import 'features/chat/data/repositories/chat_repository_impl.dart';
import 'features/chat/domain/usecases/get_messages.dart';
import 'features/chat/domain/usecases/send_message.dart';
import 'features/chat/presentation/bloc/chat_bloc.dart';
import 'features/chat/presentation/bloc/chat_event.dart';
import 'features/chat/presentation/pages/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localDataSource = ChatLocalDataSourceImpl();
    final repository = ChatRepositoryImpl(localDataSource: localDataSource);
    final getMessages = GetMessagesUseCase(repository);
    final sendMessage = SendMessageUseCase(repository);

    return BlocProvider(
      create: (_) => ChatBloc(
        getMessagesUseCase: getMessages,
        sendMessageUseCase: sendMessage,
      )..add(LoadMessagesEvent()),
      child: MaterialApp(
        title: 'BLoC Chat Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ChatPage(),
      ),
    );
  }
}