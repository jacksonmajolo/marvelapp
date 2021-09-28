import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

abstract class IHttpService {
  Future<dynamic> get(String url, {Map<String, String>? headers});
  Future<dynamic> post(String url, dynamic body,
      {Map<String, String>? headers});
  Future<dynamic> put(String url, dynamic body, {Map<String, String>? headers});
  Future<dynamic> delete(String url, {Map<String, String>? headers});
}

class HttpService implements IHttpService {
  @override
  Future<dynamic> get(String url, {Map<String, String>? headers}) async {
    return _response(await http.get(Uri.parse(url), headers: headers));
  }

  @override
  Future<dynamic> post(String url, dynamic body,
      {Map<String, String>? headers}) async {
    return _response(
        await http.post(Uri.parse(url), body: body, headers: headers));
  }

  @override
  Future<dynamic> put(String url, dynamic body,
      {Map<String, String>? headers}) async {
    return _response(
        await http.put(Uri.parse(url), body: body, headers: headers));
  }

  @override
  Future<dynamic> delete(String url, {Map<String, String>? headers}) async {
    return _response(await http.delete(Uri.parse(url), headers: headers));
  }

  dynamic _response(http.Response response) {
    var result = jsonDecode(response.body);
    if (response.statusCode == HttpStatus.ok) {
      return result;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  }
}

class ClientHttpService {
  final IHttpService client;

  ClientHttpService(this.client);

  Future<dynamic> get(String url, {Map<String, String>? headers}) {
    return this.client.get(url, headers: headers);
  }

  Future<dynamic> post(String url, dynamic body,
      {Map<String, String>? headers}) {
    return this.client.post(url, body, headers: headers);
  }

  Future<dynamic> put(String url, dynamic body,
      {Map<String, String>? headers}) {
    return this.client.put(url, body, headers: headers);
  }

  Future<dynamic> delete(String url, {Map<String, String>? headers}) {
    return this.client.delete(url, headers: headers);
  }
}
