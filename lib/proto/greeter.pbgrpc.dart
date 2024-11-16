//
//  Generated code. Do not modify.
//  source: greeter.proto
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

import 'greeter.pb.dart' as $1;

export 'greeter.pb.dart';

@$pb.GrpcServiceName('greeter.Greeter')
class GreeterClient extends $grpc.Client {
  static final _$sayHello = $grpc.ClientMethod<$1.HelloRequest, $1.HelloResponse>(
      '/greeter.Greeter/SayHello',
      ($1.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.HelloResponse.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.HelloResponse> sayHello($1.HelloRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }
}

@$pb.GrpcServiceName('greeter.Greeter')
abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'greeter.Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.HelloRequest, $1.HelloResponse>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.HelloRequest.fromBuffer(value),
        ($1.HelloResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.HelloResponse> sayHello_Pre($grpc.ServiceCall call, $async.Future<$1.HelloRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Future<$1.HelloResponse> sayHello($grpc.ServiceCall call, $1.HelloRequest request);
}
