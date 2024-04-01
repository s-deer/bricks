import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'package:quire/presentation/presentation.dart';

import 'bloc/{{name.snakeCase()}}_bloc.dart';
import 'widgets/{{name.snakeCase()}}_content.dart';

@RoutePage<void>()
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Bloc>(
      create: (context) => context.getIt(),
      child: NotifierBlocListener<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}Notification>(
        onNotification: (context, notification) {
          //TODO: handle notification
        },
          child: const Scaffold(
          body: {{name.pascalCase()}}Content(),
        ),
      ),
    );
  }
}