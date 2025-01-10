import 'package:convo/core/helpers/app_regex.dart';
import 'package:convo/features/auth/sign_in/logic/cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_widgets/app_text_form_field.dart';
import '../../../../../core/helpers/spaces.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  void initState() {
    context.read<SignInCubit>().emailController = TextEditingController();
    context.read<SignInCubit>().passwordControlle = TextEditingController();
    super.initState();
  }

  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<SignInCubit>().emailController,
            title: 'Enter Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'You Should Enter Email';
              } else if (!AppRegex.isValidEmail(value)) {
                return 'Not valid Email';
              }
            },
          ),
          verticalSpace(20),
          AppTextFormField(
            isObsecureText: isObsecureText,
            controller: context.read<SignInCubit>().passwordControlle,
            title: 'Enter Password',
            suffixIcon:
                isObsecureText ? Icons.visibility_off : Icons.visibility,
            suffixIconOnTap: () {
              setState(() {
                isObsecureText = !isObsecureText;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'You Should Enter Password';
              } else if (!AppRegex.hasMinLength(value)) {
                return 'At least 6 charectar';
              }
            },
          ),
        ],
      ),
    );
  }
}
