import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_test/tab_model.dart';

part 'tabs_provider.g.dart';

@riverpod
class Tabs extends _$Tabs {
  @override
  List<TabModel> build() {
    return [
      TabModel(title: 'Home', icon: Icons.home, hasFocus: true),
      TabModel(title: 'Search', icon: Icons.search, hasFocus: false),
      TabModel(title: 'Profile', icon: Icons.person, hasFocus: false),
    ];
  }

  void changeFocus(int index) {
    int previousIndex = state.indexWhere((e) => e.hasFocus);
    state[previousIndex] = state[previousIndex].copyWith(hasFocus: false);
    state = state.map((e) => e.copyWith(hasFocus: false)).toList();
    state[index] = state[index].copyWith(hasFocus: true);
  }
}
