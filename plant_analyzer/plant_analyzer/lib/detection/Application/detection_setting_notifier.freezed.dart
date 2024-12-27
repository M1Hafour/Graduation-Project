// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_setting_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetectionSetting {
  double get threshold => throw _privateConstructorUsedError;
  bool get drawbox => throw _privateConstructorUsedError;
  bool get arabic => throw _privateConstructorUsedError;
  bool get drawconfidence => throw _privateConstructorUsedError;
  bool get drawlabel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetectionSettingCopyWith<DetectionSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetectionSettingCopyWith<$Res> {
  factory $DetectionSettingCopyWith(
          DetectionSetting value, $Res Function(DetectionSetting) then) =
      _$DetectionSettingCopyWithImpl<$Res, DetectionSetting>;
  @useResult
  $Res call(
      {double threshold,
      bool drawbox,
      bool arabic,
      bool drawconfidence,
      bool drawlabel});
}

/// @nodoc
class _$DetectionSettingCopyWithImpl<$Res, $Val extends DetectionSetting>
    implements $DetectionSettingCopyWith<$Res> {
  _$DetectionSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threshold = null,
    Object? drawbox = null,
    Object? arabic = null,
    Object? drawconfidence = null,
    Object? drawlabel = null,
  }) {
    return _then(_value.copyWith(
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      drawbox: null == drawbox
          ? _value.drawbox
          : drawbox // ignore: cast_nullable_to_non_nullable
              as bool,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as bool,
      drawconfidence: null == drawconfidence
          ? _value.drawconfidence
          : drawconfidence // ignore: cast_nullable_to_non_nullable
              as bool,
      drawlabel: null == drawlabel
          ? _value.drawlabel
          : drawlabel // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DetectionSettingCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double threshold,
      bool drawbox,
      bool arabic,
      bool drawconfidence,
      bool drawlabel});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DetectionSettingCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? threshold = null,
    Object? drawbox = null,
    Object? arabic = null,
    Object? drawconfidence = null,
    Object? drawlabel = null,
  }) {
    return _then(_$_Initial(
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as double,
      drawbox: null == drawbox
          ? _value.drawbox
          : drawbox // ignore: cast_nullable_to_non_nullable
              as bool,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as bool,
      drawconfidence: null == drawconfidence
          ? _value.drawconfidence
          : drawconfidence // ignore: cast_nullable_to_non_nullable
              as bool,
      drawlabel: null == drawlabel
          ? _value.drawlabel
          : drawlabel // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.threshold = 0.4,
      this.drawbox = false,
      this.arabic = false,
      this.drawconfidence = false,
      this.drawlabel = true})
      : super._();

  @override
  @JsonKey()
  final double threshold;
  @override
  @JsonKey()
  final bool drawbox;
  @override
  @JsonKey()
  final bool arabic;
  @override
  @JsonKey()
  final bool drawconfidence;
  @override
  @JsonKey()
  final bool drawlabel;

  @override
  String toString() {
    return 'DetectionSetting.initial(threshold: $threshold, drawbox: $drawbox, arabic: $arabic, drawconfidence: $drawconfidence, drawlabel: $drawlabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.drawbox, drawbox) || other.drawbox == drawbox) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.drawconfidence, drawconfidence) ||
                other.drawconfidence == drawconfidence) &&
            (identical(other.drawlabel, drawlabel) ||
                other.drawlabel == drawlabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, threshold, drawbox, arabic, drawconfidence, drawlabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)
        initial,
  }) {
    return initial(threshold, drawbox, arabic, drawconfidence, drawlabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)?
        initial,
  }) {
    return initial?.call(threshold, drawbox, arabic, drawconfidence, drawlabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double threshold, bool drawbox, bool arabic,
            bool drawconfidence, bool drawlabel)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(threshold, drawbox, arabic, drawconfidence, drawlabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends DetectionSetting {
  const factory _Initial(
      {final double threshold,
      final bool drawbox,
      final bool arabic,
      final bool drawconfidence,
      final bool drawlabel}) = _$_Initial;
  const _Initial._() : super._();

  @override
  double get threshold;
  @override
  bool get drawbox;
  @override
  bool get arabic;
  @override
  bool get drawconfidence;
  @override
  bool get drawlabel;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
