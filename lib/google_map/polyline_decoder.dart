import 'dart:math' show pow;

/// https://github.com/Klerith/dart_polyline_do/blob/main/lib/polyline_do.dart
/// Decodes encoded polyline string to a [latitude, longitude] coordinates list.
List<List<double>> decodeLatlngsList(String str, int precision) {
  int index = 0,
      lat = 0,
      lng = 0,
      shift = 0,
      result = 0,
      latitudeChange,
      longitudeChange;

  int? byte;
  num factor = pow(10, precision);

  List<List<double>> coordinates = [];

  // Coordinates have variable length when encoded, so just keep
  // track of whether we've hit the end of the string. In each
  // loop iteration, a single coordinate is decoded.
  while (index < str.length) {
    // Reset shift, result, and byte
    byte = null;
    shift = 0;
    result = 0;

    do {
      byte = str.codeUnitAt(index++) - 63;
      result |= (byte & 0x1f) << shift;
      shift += 5;
    } while (byte >= 0x20);

    latitudeChange = (((result & 1) == 1) ? ~(result >> 1) : (result >> 1));

    shift = result = 0;

    do {
      byte = str.codeUnitAt(index++) - 63;
      result |= (byte & 0x1f) << shift;
      shift += 5;
    } while (byte >= 0x20);

    longitudeChange = ((result & 1) == 1 ? ~(result >> 1) : (result >> 1));

    lat += latitudeChange;
    lng += longitudeChange;

    coordinates.add([lat / factor, lng / factor]);
  }

  return coordinates;
}
