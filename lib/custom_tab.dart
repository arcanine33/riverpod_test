import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/tab_model.dart';
import 'package:riverpod_test/tabs_provider.dart';

class CustomTab extends ConsumerWidget {
  final TabModel tabModel;
  final int index;

  const CustomTab({
    required this.tabModel,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build ${tabModel.title}');
    // print(ref.watch(tabsProvider.select((value) => value[index].hasFocus)));
    return TextButton(
      onPressed: () {
        print('pressed ${tabModel.title}');
        ref.read(tabsProvider.notifier).changeFocus(index);
      },
      child: Text(
        ref.watch(tabsProvider.select((value) => value[index].title)),
        style: TextStyle(
          color:
              ref.watch(tabsProvider.select((value) => value[index].hasFocus))
                  ? Colors.deepPurple
                  : Colors.black,
        ),
      ),
    );
  }
}
