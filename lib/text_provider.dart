import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_provider.g.dart';

@riverpod
class TextTest extends _$TextTest {
  @override
  String build() {
    return 'Hello, World!';
  }

  void changeText(String text) {
    state = text;
  }
}
