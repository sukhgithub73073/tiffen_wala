part of 'role_bloc.dart';

abstract class RoleEvent extends Equatable {
  const RoleEvent();
}

class ChangeRoleEvent extends RoleEvent {

  const ChangeRoleEvent();

  @override
  List<Object?> get props => [];
}

class UpdateRoleEventData extends RoleEvent {

  const UpdateRoleEventData();

  @override
  List<Object?> get props => [];
}
