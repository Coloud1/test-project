import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/app_route.dart';
import 'package:test_prj_ivan/app/service/image_picker_service.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/settings/main/cubit/settings_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/screens/settings/main/widgets/settings_profile.dart';

class SettingsMainScreen extends StatefulWidget {
  const SettingsMainScreen({super.key});

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends BaseCubitState<SettingsCubitScreenState,
    SettingsCubit, SettingsCubitSR, SettingsMainScreen> {
  @override
  SettingsCubit createCubit() => SettingsCubit(
        GetIt.I.get<FirebaseLogoutUseCase>(),
        GetIt.I.get<UserService>(),
        GetIt.I.get<ImagePickerService>(),
      );

  @override
  void onCubitCreated(BuildContext context, SettingsCubit cubit) {
    super.onCubitCreated(context, cubit);
    cubit.init();
  }

  @override
  Widget buildWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24),
          blocBuilder(
            builder: (context, state) {
              return SettingsProfile(
                email: state.user.email,
                displayName: state.user.displayName,
                photoURL: state.user.photoURL,
                onCameraTap: () =>
                    cubitOf(context).changeAvatar(isGallery: false),
                onGalleryTap: () =>
                    cubitOf(context).changeAvatar(isGallery: true),
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _navigateToAccountProviders(context),
            child: const Text('Account providers'),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => _makeLogout(context),
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }

  void _navigateToAccountProviders(BuildContext context) {
    context.pushNamed(AppRoute.settingsAccountProviders.name);
  }

  void _makeLogout(BuildContext context) {
    cubitOf(context).logout();
  }
}
