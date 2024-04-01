import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_notification.dart';
part '{{name.snakeCase()}}_bloc.freezed.dart';

@injectable
class {{name.pascalCase()}}Bloc extends NotifierBloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State, {{name.pascalCase()}}Notification> {
  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State.initial()) {
    on<{{name.pascalCase()}}Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
