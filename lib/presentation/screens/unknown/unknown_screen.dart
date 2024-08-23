import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/exception/location_service_exception.dart';
import 'package:test_prj_ivan/app/service/location_service/location_service_impl.dart';
import 'package:test_prj_ivan/app/util/app_dialog_util.dart';

class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key});

  @override
  State<UnknownScreen> createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {
  final LocationService _service = GetIt.I.get<LocationService>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Unknown'),
        ElevatedButton(
          onPressed: () async {
            final status = await _service.serviceEnabled();
            print(status);
          },
          child: const Text('Is Service enabled?'),
        ),
        ElevatedButton(
          onPressed: () async {
            final status = await _service.requestPermission();
            print(status);
          },
          child: const Text('Request permission'),
        ),
        ElevatedButton(
          onPressed: () async {
            try {
              final location = await _service.getLocation();
              print(location);
            } on LocationPermissionDeniedException catch (_) {
              if (context.mounted) {
                AppDialogUtil.showPermissionDialog(context);
              }
            } catch (e) {
              print(e);
            }
          },
          child: const Text('Get location'),
        ),
      ],
    );
  }
}
