class CharacaterRepository {
  // Future<Character?> get(int id) async {
  //   final String result = await MarvelRepository.get('charascters/$id');

  //   final ApiResponse<ApiPaginateResponse<Character>> apiResponse =
  //       ApiResponse.fromJson(
  //     jsonDecode(result) as Map<String, dynamic>,
  //     (json) => ApiPaginateResponse.fromJson(
  //       json! as Map<String, dynamic>,
  //       (json) => Character.fromJson(
  //         json! as Map<String, dynamic>,
  //       ),
  //     ),
  //   );

  //   return apiResponse.data?.results.first;
  // }

  // Future<List<Character?>> list() async {
  //   final IHttpService client = GetIt.instance.get<IHttpService>();

  //   final String result = await client.get(
  //     // 'https://gateway.marvel.com/v1/public/characters?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd',
  //     'https://gateway.marvel.com/v1/public/characters?limit=25',
  //     headers: {
  //       'ts': '1636505833',
  //       'apikey': '1d427d05f89bf6fe3f04b90422e81a66',
  //       'hash': '215e6018a044853ab74677438fadc2fd',
  //     },
  //   );

  //   final ApiResponse<ApiPaginateResponse<Character>> apiResponse =
  //       ApiResponse.fromJson(
  //     jsonDecode(result) as Map<String, dynamic>,
  //     (json) => ApiPaginateResponse.fromJson(
  //       json! as Map<String, dynamic>,
  //       (json) => Character.fromJson(
  //         json! as Map<String, dynamic>,
  //       ),
  //     ),
  //   );

  //   return apiResponse.data!.results;
  // }

  // Future<List<Character?>> list() async {
  //   // final IHttpService client = GetIt.instance.get<IHttpService>();

  //   final response_get = await http.get(Uri.parse(
  //     "https://gateway.marvel.com/v1/public/characters/1011334?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd",
  //   ));

  //   final response = await http.get(Uri.parse(
  //     "https://gateway.marvel.com/v1/public/characters?ts=1636505833&limit=25&apikey=1d427d05f89bf6fe3f04b90422e81a66&hash=215e6018a044853ab74677438fadc2fd",
  //   ));

  //   ApiResponse<ApiPaginateResponse<Character>> apiResponse =
  //       ApiResponse.fromJson(
  //     jsonDecode(response.body) as Map<String, dynamic>,
  //     (json) => ApiPaginateResponse.fromJson(
  //       json as Map<String, dynamic>,
  //       (json) => Character.fromJson(
  //         json as Map<String, dynamic>,
  //       ),
  //     ),
  //   );

  //   return apiResponse.data.results;
  // }
}
