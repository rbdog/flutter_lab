// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_polyline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapPolyline _$MapPolylineFromJson(Map<String, dynamic> json) {
  return _MapPolyline.fromJson(json);
}

/// @nodoc
mixin _$MapPolyline {
  String get id => throw _privateConstructorUsedError;
  List<Latlng> get latlngs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapPolylineCopyWith<MapPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPolylineCopyWith<$Res> {
  factory $MapPolylineCopyWith(
          MapPolyline value, $Res Function(MapPolyline) then) =
      _$MapPolylineCopyWithImpl<$Res, MapPolyline>;
  @useResult
  $Res call({String id, List<Latlng> latlngs});
}

/// @nodoc
class _$MapPolylineCopyWithImpl<$Res, $Val extends MapPolyline>
    implements $MapPolylineCopyWith<$Res> {
  _$MapPolylineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latlngs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latlngs: null == latlngs
          ? _value.latlngs
          : latlngs // ignore: cast_nullable_to_non_nullable
              as List<Latlng>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapPolylineCopyWith<$Res>
    implements $MapPolylineCopyWith<$Res> {
  factory _$$_MapPolylineCopyWith(
          _$_MapPolyline value, $Res Function(_$_MapPolyline) then) =
      __$$_MapPolylineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<Latlng> latlngs});
}

/// @nodoc
class __$$_MapPolylineCopyWithImpl<$Res>
    extends _$MapPolylineCopyWithImpl<$Res, _$_MapPolyline>
    implements _$$_MapPolylineCopyWith<$Res> {
  __$$_MapPolylineCopyWithImpl(
      _$_MapPolyline _value, $Res Function(_$_MapPolyline) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latlngs = null,
  }) {
    return _then(_$_MapPolyline(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latlngs: null == latlngs
          ? _value._latlngs
          : latlngs // ignore: cast_nullable_to_non_nullable
              as List<Latlng>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapPolyline implements _MapPolyline {
  const _$_MapPolyline({required this.id, required final List<Latlng> latlngs})
      : _latlngs = latlngs;

  factory _$_MapPolyline.fromJson(Map<String, dynamic> json) =>
      _$$_MapPolylineFromJson(json);

  @override
  final String id;
  final List<Latlng> _latlngs;
  @override
  List<Latlng> get latlngs {
    if (_latlngs is EqualUnmodifiableListView) return _latlngs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latlngs);
  }

  @override
  String toString() {
    return 'MapPolyline(id: $id, latlngs: $latlngs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapPolyline &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._latlngs, _latlngs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_latlngs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapPolylineCopyWith<_$_MapPolyline> get copyWith =>
      __$$_MapPolylineCopyWithImpl<_$_MapPolyline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapPolylineToJson(
      this,
    );
  }
}

abstract class _MapPolyline implements MapPolyline {
  const factory _MapPolyline(
      {required final String id,
      required final List<Latlng> latlngs}) = _$_MapPolyline;

  factory _MapPolyline.fromJson(Map<String, dynamic> json) =
      _$_MapPolyline.fromJson;

  @override
  String get id;
  @override
  List<Latlng> get latlngs;
  @override
  @JsonKey(ignore: true)
  _$$_MapPolylineCopyWith<_$_MapPolyline> get copyWith =>
      throw _privateConstructorUsedError;
}
