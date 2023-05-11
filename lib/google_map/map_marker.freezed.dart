// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapMarker _$MapMarkerFromJson(Map<String, dynamic> json) {
  return _MapMarker.fromJson(json);
}

/// @nodoc
mixin _$MapMarker {
  String get id => throw _privateConstructorUsedError;
  Latlng get latlng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapMarkerCopyWith<MapMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapMarkerCopyWith<$Res> {
  factory $MapMarkerCopyWith(MapMarker value, $Res Function(MapMarker) then) =
      _$MapMarkerCopyWithImpl<$Res, MapMarker>;
  @useResult
  $Res call({String id, Latlng latlng});

  $LatlngCopyWith<$Res> get latlng;
}

/// @nodoc
class _$MapMarkerCopyWithImpl<$Res, $Val extends MapMarker>
    implements $MapMarkerCopyWith<$Res> {
  _$MapMarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latlng = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latlng: null == latlng
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as Latlng,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatlngCopyWith<$Res> get latlng {
    return $LatlngCopyWith<$Res>(_value.latlng, (value) {
      return _then(_value.copyWith(latlng: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MapMarkerCopyWith<$Res> implements $MapMarkerCopyWith<$Res> {
  factory _$$_MapMarkerCopyWith(
          _$_MapMarker value, $Res Function(_$_MapMarker) then) =
      __$$_MapMarkerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, Latlng latlng});

  @override
  $LatlngCopyWith<$Res> get latlng;
}

/// @nodoc
class __$$_MapMarkerCopyWithImpl<$Res>
    extends _$MapMarkerCopyWithImpl<$Res, _$_MapMarker>
    implements _$$_MapMarkerCopyWith<$Res> {
  __$$_MapMarkerCopyWithImpl(
      _$_MapMarker _value, $Res Function(_$_MapMarker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latlng = null,
  }) {
    return _then(_$_MapMarker(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latlng: null == latlng
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as Latlng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapMarker implements _MapMarker {
  const _$_MapMarker({required this.id, required this.latlng});

  factory _$_MapMarker.fromJson(Map<String, dynamic> json) =>
      _$$_MapMarkerFromJson(json);

  @override
  final String id;
  @override
  final Latlng latlng;

  @override
  String toString() {
    return 'MapMarker(id: $id, latlng: $latlng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapMarker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latlng, latlng) || other.latlng == latlng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, latlng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapMarkerCopyWith<_$_MapMarker> get copyWith =>
      __$$_MapMarkerCopyWithImpl<_$_MapMarker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapMarkerToJson(
      this,
    );
  }
}

abstract class _MapMarker implements MapMarker {
  const factory _MapMarker(
      {required final String id, required final Latlng latlng}) = _$_MapMarker;

  factory _MapMarker.fromJson(Map<String, dynamic> json) =
      _$_MapMarker.fromJson;

  @override
  String get id;
  @override
  Latlng get latlng;
  @override
  @JsonKey(ignore: true)
  _$$_MapMarkerCopyWith<_$_MapMarker> get copyWith =>
      throw _privateConstructorUsedError;
}
