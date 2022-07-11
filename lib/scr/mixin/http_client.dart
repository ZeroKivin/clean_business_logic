import 'package:clean_business_logic/scr/data/client.dart';
import 'package:clean_business_logic/scr/endpoint/endpoint.dart';
import 'package:dio/dio.dart';

mixin HttpClient on Client {
  final Dio httpClient = Dio();

  String createUrl<T extends Endpoint>(T endpoint) {
    final uri = endpoint.create();
    final url = uri.toString();

    return url;
  }
}