import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc_state.dart';
import 'package:test_prj_ivan/presentation/screens/home/bloc/home_bloc_imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState
    extends BaseState<HomeBlocScreenState, HomeBloc, HomeBlocSR, HomeScreen> {
  @override
  HomeBloc createBloc() => HomeBloc(GetIt.I.get<UserService>());

  @override
  Widget buildWidget(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 40),
          blocBuilder(
            builder: (context, state) {
              return Column(
                children: [
                  Text('Name: ${state.user.displayName}'),
                  Text('Email: ${state.user.email}'),
                ],
              );
            },
          ),
          ElevatedButton(
            onPressed: () => blocOf(context).add(const HomeBlocEvent.logOut()),
            child: Text(context.tr.homeLogOutButtonLabel),
          ),
        ],
      ),
    );
  }
}
