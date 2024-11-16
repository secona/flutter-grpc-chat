import 'package:flutter_grpc_chat/proto/chat.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ChatService {
  ChatService._internal();

  static final ChatService _instance = ChatService._internal();

  factory ChatService() => _instance;

  static ChatService get instance => _instance;

  late ChatClient _chatClient;
  
  ChatClient get chatClient => _chatClient;

  Future<void> init() async {
    _createChannel();
  }

  _createChannel() {
    final channel = ClientChannel(
      "localhost",
      port: 50051,
      options: const ChannelOptions(),
    );

    _chatClient = ChatClient(channel);
  }
}
