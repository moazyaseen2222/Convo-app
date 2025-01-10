import 'package:convo/core/helpers/extensions.dart';
import 'package:convo/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/app_widgets/app_button.dart';
import '../../../../../core/routing/routers.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../logic/cubit/sign_in_cubit.dart';

class BlocConsumerWithSignInButton extends StatelessWidget {
  const BlocConsumerWithSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: AppColors.successfulColor,
              content: Text(
                'Sign in successful!',
                style: AppTextStyles.font13WhiteSemiBold,
              )));
          context.pushReplacementNamed(Routes.homeScreen);
        } else if (state is SignInError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: AppColors.grey,
              content: Text(
                state.message,
                style: AppTextStyles.font13WhiteSemiBold,
              )));
        }
      },
      builder: (context, state) {
        if (state is SingInLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.mainBlue,
          ));
        }
        return AppButton(
          title: 'Sign in',
          onPressed: () {
            validationThenDoLogin(context);
          },
        );
      },
    );
  }
}

// Form validation then login:
void validationThenDoLogin(BuildContext context) {
  if (context.read<SignInCubit>().formKey.currentState!.validate()) {
    final email = context.read<SignInCubit>().emailController.text.trim();
    final password = context.read<SignInCubit>().passwordControlle.text.trim();
    context.read<SignInCubit>().signIn(email, password);
  }
}
