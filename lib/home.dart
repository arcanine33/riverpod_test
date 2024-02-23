import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/custom_tab.dart';
import 'package:riverpod_test/future_provider.dart';
import 'package:riverpod_test/tabs_provider.dart';
import 'package:riverpod_test/text_provider.dart';
import 'package:riverpod_test/text_test.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    print('*** init home');
    tabController = TabController(
      length: ref.read(tabsProvider).length,
      initialIndex: 0,
      vsync: this,
    );

    super.initState();
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    print('*** didupdate home');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // AsyncValue<void> futureProvider = ref.watch(futuresProvider);
    // String text = ref.watch(textTestProvider);
    print('*** home build');
    return SafeArea(
      child: Scaffold(
        appBar: TabBar(
          isScrollable: true,
          controller: tabController,
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
          labelPadding: const EdgeInsets.symmetric(horizontal: 3),
          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
          indicatorColor: Colors.transparent,
          tabAlignment: TabAlignment.center,
          tabs: ref.watch(tabsProvider).map((tab) {
            // final index = ref.watch(tabsProvider).indexOf(tab);
            final index = ref.watch(tabsProvider.select((value) => value.indexOf(tab)));
            return CustomTab(
              index: index,
              // tabModel: ref.watch(tabsProvider)[index],
              tabModel: ref.watch(
                tabsProvider.select((value) => value[index]),
              ),
            );
          }).toList(),
        ),
        body: Column(
          children: [
            // Center(
            //   child: TextButton(
            //     onPressed: ()  {
            //        ref.read(futuresProvider.notifier).uploadPost();
            //     },
            //     child: futureProvider.isLoading
            //         ? Text('loading...')
            //         : Text('upload post'),
            //     // child: futureProvider.when(
            //     //     data: (_) => Text('upload post'),
            //     //     error: (e, stacktrace) => Text(e.toString()),
            //     //     loading: () => CircularProgressIndicator()),
            //   ),
            // ),
            // TextButton(
            //     onPressed: () =>
            //         ref.read(textTestProvider.notifier).changeText('second Text'),
            //     child: Text('동일 객체로 state 한다면 render 되나? ')),
            // TextTestWidget(text),
          ],
        ),
      ),
    );
  }


}
