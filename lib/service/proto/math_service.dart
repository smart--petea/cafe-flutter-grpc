import 'package:fixnum/fixnum.dart';
import 'package:cafe_flutter_grpc/GrpcFlutterClient.dart';
import './server.pbgrpc.dart';

class MathService {
  static Future<Response> add(int a, int b) async {
    var client = AddServiceClient(GrpcFlutterClient.getClient());
    Request request = Request.create();
    request.a = Int64(a);
    request.b = Int64(b);
    return await client.add(request);
  }
}