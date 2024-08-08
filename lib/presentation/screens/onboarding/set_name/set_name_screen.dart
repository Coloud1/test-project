import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit_state.dart';
import 'package:test_prj_ivan/domain/usecase/user/update_display_name_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_name/cubit/set_name_cubit_imports.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_app_bar.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_textfield/custom_textfield.dart';
import 'package:test_prj_ivan/presentation/widgets/form_column.dart';
import 'package:test_prj_ivan/presentation/widgets/scaffold_wrapper.dart';

class SetNameScreen extends StatefulWidget {
  const SetNameScreen({super.key});

  @override
  State<SetNameScreen> createState() => _SetNameScreenState();
}

class _SetNameScreenState extends BaseCubitState<SetNameCubitScreenState,
    SetNameCubit, SetNameCubitSR, SetNameScreen> {
  final TextEditingController _displayNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  SetNameCubit createCubit() => SetNameCubit(
        GetIt.I.get<UpdateDisplayNameUseCase>(),
      );

  @override
  void onCubitCreated(BuildContext context, SetNameCubit cubit) {
    super.onCubitCreated(context, cubit);
    cubit.failureStream.listen((failure) {
      print(failure);
    });
  }

  @override
  Widget buildWidget(BuildContext context) {
    return ScaffoldWrapper(
      appBar: const CustomAppBar(title: 'Set your Name'),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      safeArea: (top: true, bottom: true),
      body: FormColumn(
        key: _formKey,
        children: [
          const SizedBox(height: 40),
          CustomTextField(
            controller: _displayNameController,
            keyboardType: TextInputType.name,
            hintText: 'Display name',
            validator: (name) {
              if (name == null || name.isEmpty) {
                return 'Field is required';
              }

              if (name.trim().isEmpty) {
                return 'Field is required';
              }

              return null;
            },
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => _updateDisplayName(context),
            child: const Text('Set new name'),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    super.dispose();
  }

  void _updateDisplayName(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      cubitOf(context).updateDisplayName(_displayNameController.text);
    }
  }
}
