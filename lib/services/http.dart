import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class IHttpService {
  Future<T> get<T>(String url, {Map<String, String>? headers});
  Future<T> post<T>(String url, {Object? body, Map<String, String>? headers});
  Future<T> put<T>(String url, {Object? body, Map<String, String>? headers});
  Future<T> delete<T>(String url, {Map<String, String>? headers});
}

class HttpService implements IHttpService {
  @override
  Future<T> get<T>(String url, {Map<String, String>? headers}) async {
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    return json.decode(response.body) as T;
  }

  @override
  Future<T> post<T>(String url,
      {Object? body, Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    return json.decode(response.body) as T;
  }

  @override
  Future<T> put<T>(String url,
      {Object? body, Map<String, String>? headers}) async {
    final response = await http.put(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    return json.decode(response.body) as T;
  }

  @override
  Future<T> delete<T>(String url, {Map<String, String>? headers}) async {
    final response = await http.delete(
      Uri.parse(url),
      headers: headers,
    );

    return json.decode(response.body) as T;
  }
}
