import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_model.freezed.dart';

@freezed
class TabModel with _$TabModel {
  const factory TabModel({
    required String title,
    required IconData icon,
    required bool hasFocus,
  }) = _TabModel;
}