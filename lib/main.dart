import 'package:flutter/material.dart';
import 'package:flutter_grpc_chat/proto/greeter.pbgrpc.dart';
import 'package:flutter_grpc_chat/services/chat_service.dart';
import 'package:flutter_grpc_chat/services/greeter_service.dart';
import 'package:grpc/grpc.dart';

void main() {
  ChatService().init();
  GreeterService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = "Input your name!";
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(onChanged: (text) => setState(() => _name = text)),
            Text(_message),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _greet,
        tooltip: 'Greet',
        child: const Icon(Icons.waving_hand),
      ),
    );
  }

  Future<void> _greet() async {
    try {
      final response = await GreeterService().greeterClient.sayHello(HelloRequest()..name = _name);

      setState(() => _message = response.message);
    } on GrpcError catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}
