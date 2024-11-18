import 'package:e_clot_shop/features/image/data/repo/pick_image_repo_impl.dart';
import 'package:e_clot_shop/features/image/presentation/manager/pick_image/pick_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/build_profile/build_profile_cubit.dart';
import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BuildProfileCubit()),
        BlocProvider(create: (context) => PickImageCubit(PickImageRepoImpl())),
      ],
      child: const Scaffold(
        body: ProfileViewBody(),
      ),
    );
  }
}
