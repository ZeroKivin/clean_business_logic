import 'package:equatable/equatable.dart';

abstract class Entity extends Equatable {
  Entity copyWith();

  @override
  List<Object?> get props;
}