import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'set_profile_state.dart';

enum UserStatus { available, busy, offline }

class SetProfileCubit extends Cubit<SetProfileState> {
  SetProfileCubit() : super(SetProfileInitial());

  late TextEditingController nameController;
  late TextEditingController bioController;

  final formKey = GlobalKey<FormState>();

  Future<void> setProfile(String name, String bio, UserStatus status) async {}
}
