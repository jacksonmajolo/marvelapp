// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponse<T>(
      json['code'] as int,
      json['status'] as String,
      fromJsonT(json['data']),
    );

Map<String, dynamic> _$ApiResponseToJson<T>(
  ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.message,
      'data': toJsonT(instance.data),
    };

ApiPaginateResponse<T> _$ApiPaginateResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiPaginateResponse<T>(
      json['offset'] as int,
      json['limit'] as int,
      json['total'] as int,
      json['count'] as int,
      (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$ApiPaginateResponseToJson<T>(
  ApiPaginateResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.results.map(toJsonT).toList(),
    };
