import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng.freezed.dart';
part 'latlng.g.dart';

@freezed
class Latlng with _$Latlng {
  const factory Latlng({
    required double lat,
    required double lng,
  }) = _Latlng;

  factory Latlng.fromJson(Map<String, dynamic> json) => _$LatlngFromJson(json);
}
