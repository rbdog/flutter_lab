import 'package:flutter_lab/google_map/latlng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_marker.freezed.dart';
part 'map_marker.g.dart';

@freezed
class MapMarker with _$MapMarker {
  const factory MapMarker({
    required String id,
    required Latlng latlng,
  }) = _MapMarker;

  factory MapMarker.fromJson(Map<String, dynamic> json) =>
      _$MapMarkerFromJson(json);
}
