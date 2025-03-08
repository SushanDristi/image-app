import 'package:image_app/base/enum/app_state.dart';

class AppResponse<T> {
  final AppStatus status;
  final T? data;
  final String? error;

  const AppResponse({
    this.status = AppStatus.initial,
    this.data,
    this.error,
  });

  AppResponse<T> copyWith({
    AppStatus? status,
    T? data,
    String? error,
  }) {
    return AppResponse<T>(
      status: status ?? this.status,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }
}
