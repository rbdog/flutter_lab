import 'package:flutter_lab/google_map/latlng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_polyline.freezed.dart';
part 'map_polyline.g.dart';

@freezed
class MapPolyline with _$MapPolyline {
  const factory MapPolyline({
    required String id,
    required List<Latlng> latlngs,
  }) = _MapPolyline;

  factory MapPolyline.fromJson(Map<String, dynamic> json) =>
      _$MapPolylineFromJson(json);
}
