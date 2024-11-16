import 'package:flutter_grpc_chat/proto/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GreeterService {
  GreeterService._internal();

  static final GreeterService _instance = GreeterService._internal();

  factory GreeterService() => _instance;

  static GreeterService get instance => _instance;

  late GreeterClient _greeterClient;
  
  GreeterClient get greeterClient => _greeterClient;

  Future<void> init() async {
    _createChannel();
  }

  _createChannel() {
    final channel = ClientChannel(
      "localhost",
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _greeterClient = GreeterClient(channel);
  }
}
