// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabModel {
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  bool get hasFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabModelCopyWith<TabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabModelCopyWith<$Res> {
  factory $TabModelCopyWith(TabModel value, $Res Function(TabModel) then) =
      _$TabModelCopyWithImpl<$Res, TabModel>;
  @useResult
  $Res call({String title, IconData icon, bool hasFocus});
}

/// @nodoc
class _$TabModelCopyWithImpl<$Res, $Val extends TabModel>
    implements $TabModelCopyWith<$Res> {
  _$TabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? hasFocus = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      hasFocus: null == hasFocus
          ? _value.hasFocus
          : hasFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabModelImplCopyWith<$Res>
    implements $TabModelCopyWith<$Res> {
  factory _$$TabModelImplCopyWith(
          _$TabModelImpl value, $Res Function(_$TabModelImpl) then) =
      __$$TabModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, IconData icon, bool hasFocus});
}

/// @nodoc
class __$$TabModelImplCopyWithImpl<$Res>
    extends _$TabModelCopyWithImpl<$Res, _$TabModelImpl>
    implements _$$TabModelImplCopyWith<$Res> {
  __$$TabModelImplCopyWithImpl(
      _$TabModelImpl _value, $Res Function(_$TabModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? hasFocus = null,
  }) {
    return _then(_$TabModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      hasFocus: null == hasFocus
          ? _value.hasFocus
          : hasFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TabModelImpl implements _TabModel {
  const _$TabModelImpl(
      {required this.title, required this.icon, required this.hasFocus});

  @override
  final String title;
  @override
  final IconData icon;
  @override
  final bool hasFocus;

  @override
  String toString() {
    return 'TabModel(title: $title, icon: $icon, hasFocus: $hasFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.hasFocus, hasFocus) ||
                other.hasFocus == hasFocus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, hasFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabModelImplCopyWith<_$TabModelImpl> get copyWith =>
      __$$TabModelImplCopyWithImpl<_$TabModelImpl>(this, _$identity);
}

abstract class _TabModel implements TabModel {
  const factory _TabModel(
      {required final String title,
      required final IconData icon,
      required final bool hasFocus}) = _$TabModelImpl;

  @override
  String get title;
  @override
  IconData get icon;
  @override
  bool get hasFocus;
  @override
  @JsonKey(ignore: true)
  _$$TabModelImplCopyWith<_$TabModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
