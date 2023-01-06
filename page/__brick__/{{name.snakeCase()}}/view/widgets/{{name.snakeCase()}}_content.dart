import 'package:flutter/widgets.dart';

class {{name.pascalCase()}}Content extends StatelessWidget {
  const {{name.pascalCase()}}Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('{{name.sentenceCase()}} Page'),
    );
  }
}