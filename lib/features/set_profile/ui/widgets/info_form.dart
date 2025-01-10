import 'package:convo/core/app_widgets/app_button.dart';
import 'package:convo/core/routing/app_routers.dart';
import 'package:convo/features/set_profile/logic/cubit/set_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_widgets/app_text_form_field.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spaces.dart';
import 'status_selectore.dart';

class InfoForm extends StatefulWidget {
  const InfoForm({super.key});

  @override
  State<InfoForm> createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  @override
  void initState() {
    context.read<SetProfileCubit>().nameController = TextEditingController();
    context.read<SetProfileCubit>().bioController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SetProfileCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            title: 'Name',
            controller: context.read<SetProfileCubit>().nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'You Should Enter Name';
              } else if (!AppRegex.hasNameMinLength(value)) {
                return 'At least 4 Charectar';
              }
            },
          ),
          verticalSpace(25.h),
          AppTextFormField(
            title: 'Bio',
            controller: context.read<SetProfileCubit>().bioController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'You Should Enter Bio';
              } else if (!AppRegex.hasNameMinLength(value)) {
                return 'At least 4 Charectar';
              }
            },
          ),
          verticalSpace(25.h),

          // Status Selectore \\

          const StatusSelectore(
            status: 'Available',
            iconColor: Colors.green,
          ),
          verticalSpace(100.h),

          // Complete Button \\

          AppButton(title: 'Complete', onPressed: () {})
        ],
      ),
    );
  }
}
