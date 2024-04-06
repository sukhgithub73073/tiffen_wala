part of 'role_bloc.dart';

abstract class RoleState extends Equatable {
  const RoleState();
}

class RoleInitial extends RoleState {
  @override
  List<Object> get props => [];
}

class RoleLoading extends RoleState {
  @override
  List<Object> get props => [];
}

