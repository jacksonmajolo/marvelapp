import 'package:json_annotation/json_annotation.dart';

part 'api.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  @JsonKey(name: 'code')
  final int code;

  @JsonKey(name: 'status')
  final String message;

  @JsonKey(name: 'data')
  final T data;

  ApiResponse(
    this.code,
    this.message,
    this.data,
  );

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiResponseFromJson(
        json,
        fromJsonT,
      );

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$ApiResponseToJson(
        this,
        toJsonT,
      );
}

@JsonSerializable(genericArgumentFactories: true)
class ApiPaginateResponse<T> {
  @JsonKey(name: 'offset')
  final int offset;

  @JsonKey(name: 'limit')
  final int limit;

  @JsonKey(name: 'total')
  final int total;

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'results')
  final List<T> results;

  ApiPaginateResponse(
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  );

  factory ApiPaginateResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiPaginateResponseFromJson(
        json,
        fromJsonT,
      );

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$ApiPaginateResponseToJson(
        this,
        toJsonT,
      );
}
