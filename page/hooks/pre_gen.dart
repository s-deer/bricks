import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Making brick bloc');
  final name = context.vars['name'] as String;
  final style = context.vars['style'] as String;

  final brick = Brick.version(name: 'bloc', version: '^0.2.0');
  final generator = await MasonGenerator.fromBrick(brick);

  final directory = Directory(
    path.join(Directory.current.path, name.snakeCase, 'bloc'),
  );

  final target = DirectoryGeneratorTarget(directory);

  var vars = <String, dynamic>{'name': name, 'style': style};
  
  await generator.hooks.preGen(vars: vars, onVarsChanged: (v) => vars = v);
  
  final files = await generator.generate(
    target,
    vars: vars,
    logger: context.logger,
    fileConflictResolution: FileConflictResolution.overwrite,
  );

  await generator.hooks.postGen(vars: vars);

  progress.complete('Made brick bloc');
  context.logger.logFilesGenerated(files.length);
}

extension on Logger {
  void logFilesGenerated(int fileCount) {
    this
      ..info(
        '${lightGreen.wrap('\u2713')} '
        'Generated $fileCount file${fileCount != 1 ? '(s)' : ''}:',
      )
      ..flush((message) => info(darkGray.wrap(message)));
  }
}
