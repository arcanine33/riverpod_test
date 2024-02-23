import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_provider.g.dart';

@riverpod
class Futures extends _$Futures {
  @override
  Future<void> build() async {
    await Future.delayed(Duration(seconds: 3), () {
      // print('Post uploaded');
      state = AsyncValue.data(null);
    });
  }

  Future<void> uploadPost() async {
    state = const AsyncLoading();
    await Future.delayed(Duration(seconds: 3), () {
      // print('Post uploaded');
      state = AsyncValue.data(null);
    });
  }
}
