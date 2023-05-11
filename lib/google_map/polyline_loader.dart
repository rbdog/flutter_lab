import 'package:flutter_lab/google_map/latlng.dart';
import 'package:flutter_lab/google_map/map_polyline.dart';
import 'package:flutter_lab/google_map/polyline_decoder.dart';

MapPolyline decodePolyline(
  String id,
  String encoded, {
  int precision = 5,
}) {
  final rawLatlngsList = decodeLatlngsList(encoded, precision);
  final latlngs = rawLatlngsList.map((rawLatlngs) {
    return Latlng(
      lat: rawLatlngs.first,
      lng: rawLatlngs.last,
    );
  }).toList();
  return MapPolyline(id: id, latlngs: latlngs);
}
