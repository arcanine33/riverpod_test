import 'package:flutter/cupertino.dart';

class TextTestWidget extends StatelessWidget {
  final String text;
  const TextTestWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    print('text test widget build');
    return Text(text);
  }
}
