
import 'package:equatable/equatable.dart';
import 'package:image_app/base/utils/app_const.dart';

class ErrorModel extends Equatable {
  final String message;

  const ErrorModel({required this.message});

  @override
  List<Object?> get props => [message];

  factory ErrorModel.fromJson(Map<String, dynamic>? json) => ErrorModel(
    message: json?['message'] ?? AppConst.somethingWentWrong,
  );
}
