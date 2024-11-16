//
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chat.pb.dart' as $0;

export 'chat.pb.dart';

@$pb.GrpcServiceName('chat.Chat')
class ChatClient extends $grpc.Client {
  static final _$connectServer = $grpc.ClientMethod<$0.ConnectRequest, $0.ChatMessage>(
      '/chat.Chat/ConnectServer',
      ($0.ConnectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));
  static final _$send = $grpc.ClientMethod<$0.ChatMessage, $0.ChatMessage>(
      '/chat.Chat/Send',
      ($0.ChatMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));

  ChatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.ChatMessage> connectServer($0.ConnectRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connectServer, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessage> send($0.ChatMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }
}

@$pb.GrpcServiceName('chat.Chat')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'chat.Chat';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ConnectRequest, $0.ChatMessage>(
        'ConnectServer',
        connectServer_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ConnectRequest.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatMessage, $0.ChatMessage>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ChatMessage> connectServer_Pre($grpc.ServiceCall call, $async.Future<$0.ConnectRequest> request) async* {
    yield* connectServer(call, await request);
  }

  $async.Future<$0.ChatMessage> send_Pre($grpc.ServiceCall call, $async.Future<$0.ChatMessage> request) async {
    return send(call, await request);
  }

  $async.Stream<$0.ChatMessage> connectServer($grpc.ServiceCall call, $0.ConnectRequest request);
  $async.Future<$0.ChatMessage> send($grpc.ServiceCall call, $0.ChatMessage request);
}
