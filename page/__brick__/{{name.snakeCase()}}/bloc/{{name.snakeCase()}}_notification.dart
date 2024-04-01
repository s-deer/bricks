part of '{{name.snakeCase()}}_bloc.dart';

@freezed
class {{name.pascalCase()}}Notification with _${{name.pascalCase()}}Notification {
  const factory {{name.pascalCase()}}Notification.notification() = _Notification;
  const factory {{name.pascalCase()}}Notification.failure(Failure failure) = _FailureNotification;
}
