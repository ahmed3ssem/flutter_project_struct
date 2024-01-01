import 'package:flutter_project_struct/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {

  Future<Either<Failures , Type>> call(Params params);
}


class NoParams extends Equatable{

  @override
  List<Object?> get props => [];
}

class LoginParams extends Equatable{

  final String email;
  final String password;

  const LoginParams({required this.email,required this.password});
  @override
  List<Object?> get props => [email , password];
}
