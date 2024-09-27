import 'package:e_clot_shop/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../auth/presentation/manager/google_auth/google_auth_cubit.dart';
import '../../data/auth_item_model.dart';
import 'provider_auth_item.dart';

class LoginProviderAuth extends StatelessWidget {
  const LoginProviderAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlocConsumerGoogleAuth(),
        const SizedBox(height: 16),
        ProviderAuthItem(
            authItemModel: AuthItemModel(
                icon: Assets.imagesFacebook,
                text: 'Continue With Facebook',
                onTap: () async {
                  await GoogleSignIn().signOut();
                })),
      ],
    );
  }
}

class BlocConsumerGoogleAuth extends StatelessWidget {
  const BlocConsumerGoogleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    var isLoading = false;
    return BlocConsumer<GoogleAuthCubit, GoogleAuthState>(
      listener: (context, state) {
        if (state is GoogleAuthLoading) {
          isLoading = state.isLoading;
        }
        if (state is GoogleAuthSuccess) {
          isLoading = false;
        }
        if (state is GoogleAuthFailure) {
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ProviderAuthItem(
            authItemModel: AuthItemModel(
                isLoading: isLoading,
                icon: Assets.imagesGoogle,
                text: 'Continue With Google',
                onTap: () async {
                  await context.read<GoogleAuthCubit>().signInWIthGoogle();
                }));
      },
    );
  }
}
