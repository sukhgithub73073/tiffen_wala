import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'role_event.dart';

part 'role_state.dart';

class RoleBloc extends Bloc<RoleEvent, RoleState> {
  RoleBloc() : super(RoleInitial()) {
    on<ChangeRoleEvent>(_doChangeRole);
  }

  FutureOr<void> _doChangeRole(ChangeRoleEvent event, Emitter<RoleState> emit) {
    emit(RoleLoading());


  }

}
