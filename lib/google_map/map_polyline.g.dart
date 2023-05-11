// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_polyline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapPolyline _$$_MapPolylineFromJson(Map<String, dynamic> json) =>
    _$_MapPolyline(
      id: json['id'] as String,
      latlngs: (json['latlngs'] as List<dynamic>)
          .map((e) => Latlng.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MapPolylineToJson(_$_MapPolyline instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latlngs': instance.latlngs,
    };
