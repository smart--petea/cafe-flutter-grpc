import "package:grpc/grpc.dart";

class GrpcFlutterClient {
  static ClientChannel client;

  static ClientChannel getClient() {
    if (client == null) {
      client = ClientChannel(
        "5.56.105.55",
        port: 80,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
    }
    return client;
  }
}
