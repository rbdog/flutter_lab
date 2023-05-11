// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latlng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Latlng _$LatlngFromJson(Map<String, dynamic> json) {
  return _Latlng.fromJson(json);
}

/// @nodoc
mixin _$Latlng {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatlngCopyWith<Latlng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatlngCopyWith<$Res> {
  factory $LatlngCopyWith(Latlng value, $Res Function(Latlng) then) =
      _$LatlngCopyWithImpl<$Res, Latlng>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatlngCopyWithImpl<$Res, $Val extends Latlng>
    implements $LatlngCopyWith<$Res> {
  _$LatlngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatlngCopyWith<$Res> implements $LatlngCopyWith<$Res> {
  factory _$$_LatlngCopyWith(_$_Latlng value, $Res Function(_$_Latlng) then) =
      __$$_LatlngCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$_LatlngCopyWithImpl<$Res>
    extends _$LatlngCopyWithImpl<$Res, _$_Latlng>
    implements _$$_LatlngCopyWith<$Res> {
  __$$_LatlngCopyWithImpl(_$_Latlng _value, $Res Function(_$_Latlng) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_Latlng(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Latlng implements _Latlng {
  const _$_Latlng({required this.lat, required this.lng});

  factory _$_Latlng.fromJson(Map<String, dynamic> json) =>
      _$$_LatlngFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'Latlng(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Latlng &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatlngCopyWith<_$_Latlng> get copyWith =>
      __$$_LatlngCopyWithImpl<_$_Latlng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatlngToJson(
      this,
    );
  }
}

abstract class _Latlng implements Latlng {
  const factory _Latlng(
      {required final double lat, required final double lng}) = _$_Latlng;

  factory _Latlng.fromJson(Map<String, dynamic> json) = _$_Latlng.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LatlngCopyWith<_$_Latlng> get copyWith =>
      throw _privateConstructorUsedError;
}
