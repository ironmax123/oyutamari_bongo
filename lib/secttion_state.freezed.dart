// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secttion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionPageState {
  double get filldNum => throw _privateConstructorUsedError;

  /// Create a copy of SectionPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionPageStateCopyWith<SectionPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionPageStateCopyWith<$Res> {
  factory $SectionPageStateCopyWith(
          SectionPageState value, $Res Function(SectionPageState) then) =
      _$SectionPageStateCopyWithImpl<$Res, SectionPageState>;
  @useResult
  $Res call({double filldNum});
}

/// @nodoc
class _$SectionPageStateCopyWithImpl<$Res, $Val extends SectionPageState>
    implements $SectionPageStateCopyWith<$Res> {
  _$SectionPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filldNum = null,
  }) {
    return _then(_value.copyWith(
      filldNum: null == filldNum
          ? _value.filldNum
          : filldNum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionPageStateImplCopyWith<$Res>
    implements $SectionPageStateCopyWith<$Res> {
  factory _$$SectionPageStateImplCopyWith(_$SectionPageStateImpl value,
          $Res Function(_$SectionPageStateImpl) then) =
      __$$SectionPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double filldNum});
}

/// @nodoc
class __$$SectionPageStateImplCopyWithImpl<$Res>
    extends _$SectionPageStateCopyWithImpl<$Res, _$SectionPageStateImpl>
    implements _$$SectionPageStateImplCopyWith<$Res> {
  __$$SectionPageStateImplCopyWithImpl(_$SectionPageStateImpl _value,
      $Res Function(_$SectionPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filldNum = null,
  }) {
    return _then(_$SectionPageStateImpl(
      filldNum: null == filldNum
          ? _value.filldNum
          : filldNum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SectionPageStateImpl implements _SectionPageState {
  const _$SectionPageStateImpl({required this.filldNum});

  @override
  final double filldNum;

  @override
  String toString() {
    return 'SectionPageState(filldNum: $filldNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionPageStateImpl &&
            (identical(other.filldNum, filldNum) ||
                other.filldNum == filldNum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filldNum);

  /// Create a copy of SectionPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionPageStateImplCopyWith<_$SectionPageStateImpl> get copyWith =>
      __$$SectionPageStateImplCopyWithImpl<_$SectionPageStateImpl>(
          this, _$identity);
}

abstract class _SectionPageState implements SectionPageState {
  const factory _SectionPageState({required final double filldNum}) =
      _$SectionPageStateImpl;

  @override
  double get filldNum;

  /// Create a copy of SectionPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionPageStateImplCopyWith<_$SectionPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
