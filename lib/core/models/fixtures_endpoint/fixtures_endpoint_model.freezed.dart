// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixtures_endpoint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FixturesEndpointModel _$FixturesEndpointModelFromJson(
    Map<String, dynamic> json) {
  return _FixturesEndpointModel.fromJson(json);
}

/// @nodoc
mixin _$FixturesEndpointModel {
  List<ResponseDataModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesEndpointModelCopyWith<FixturesEndpointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesEndpointModelCopyWith<$Res> {
  factory $FixturesEndpointModelCopyWith(FixturesEndpointModel value,
          $Res Function(FixturesEndpointModel) then) =
      _$FixturesEndpointModelCopyWithImpl<$Res, FixturesEndpointModel>;
  @useResult
  $Res call({List<ResponseDataModel> response});
}

/// @nodoc
class _$FixturesEndpointModelCopyWithImpl<$Res,
        $Val extends FixturesEndpointModel>
    implements $FixturesEndpointModelCopyWith<$Res> {
  _$FixturesEndpointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FixturesEndpointModelImplCopyWith<$Res>
    implements $FixturesEndpointModelCopyWith<$Res> {
  factory _$$FixturesEndpointModelImplCopyWith(
          _$FixturesEndpointModelImpl value,
          $Res Function(_$FixturesEndpointModelImpl) then) =
      __$$FixturesEndpointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResponseDataModel> response});
}

/// @nodoc
class __$$FixturesEndpointModelImplCopyWithImpl<$Res>
    extends _$FixturesEndpointModelCopyWithImpl<$Res,
        _$FixturesEndpointModelImpl>
    implements _$$FixturesEndpointModelImplCopyWith<$Res> {
  __$$FixturesEndpointModelImplCopyWithImpl(_$FixturesEndpointModelImpl _value,
      $Res Function(_$FixturesEndpointModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$FixturesEndpointModelImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixturesEndpointModelImpl implements _FixturesEndpointModel {
  _$FixturesEndpointModelImpl({required final List<ResponseDataModel> response})
      : _response = response;

  factory _$FixturesEndpointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixturesEndpointModelImplFromJson(json);

  final List<ResponseDataModel> _response;
  @override
  List<ResponseDataModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'FixturesEndpointModel(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixturesEndpointModelImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FixturesEndpointModelImplCopyWith<_$FixturesEndpointModelImpl>
      get copyWith => __$$FixturesEndpointModelImplCopyWithImpl<
          _$FixturesEndpointModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FixturesEndpointModelImplToJson(
      this,
    );
  }
}

abstract class _FixturesEndpointModel implements FixturesEndpointModel {
  factory _FixturesEndpointModel(
          {required final List<ResponseDataModel> response}) =
      _$FixturesEndpointModelImpl;

  factory _FixturesEndpointModel.fromJson(Map<String, dynamic> json) =
      _$FixturesEndpointModelImpl.fromJson;

  @override
  List<ResponseDataModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$FixturesEndpointModelImplCopyWith<_$FixturesEndpointModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
