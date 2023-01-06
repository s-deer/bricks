import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './widgets/widgets.dart';
import '../bloc/{{name.snakeCase()}}_bloc.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return BlocProvider(
        create: (_) => {{name.pascalCase()}}Bloc(),
        child: const {{name.pascalCase()}}Content(),
      );
  }
}