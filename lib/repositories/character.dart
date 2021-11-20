import 'dart:convert';

import 'package:http/http.dart' as http;

// import 'package:get_it/get_it.dart';
// import 'package:json_annotation/json_annotation.dart';
import 'package:marvelapp/models/character/character.dart';
import 'package:marvelapp/repositories/base/api.dart';
// import 'package:marvelapp/services/http.dart';

class CharacaterRepository {
  Future<Character> get(int id) async {
    final response = await http.get(Uri.parse(
      'https://gateway.marvel.com/v1/public/characters/$id?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd',
    ));

    ApiResponse<ApiPaginateResponse<Character>> apiResponse =
        ApiResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
      (json) => ApiPaginateResponse.fromJson(
        json as Map<String, dynamic>,
        (json) => Character.fromJson(
          json as Map<String, dynamic>,
        ),
      ),
    );

    return apiResponse.data.results.first;
  }

  Future<List<Character>> list() async {
    // final IHttpService client = GetIt.instance.get<IHttpService>();

    final response_get = await http.get(Uri.parse(
      "https://gateway.marvel.com/v1/public/characters/1011334?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd",
    ));

    final response = await http.get(Uri.parse(
      "https://gateway.marvel.com/v1/public/characters?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd",
    ));

    ApiResponse<ApiPaginateResponse<Character>> apiResponse =
        ApiResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
      (json) => ApiPaginateResponse.fromJson(
        json as Map<String, dynamic>,
        (json) => Character.fromJson(
          json as Map<String, dynamic>,
        ),
      ),
    );

    return apiResponse.data.results;
  }
}
