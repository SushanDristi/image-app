

import 'package:equatable/equatable.dart';
import 'package:image_app/base/api/typedef.dart';

abstract class BaseUseCase<T, P> {
  ResultFuture<T> call(P p);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}