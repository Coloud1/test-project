import 'package:flutter/cupertino.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_cached_network_image.dart';

class SettingsProfile extends StatelessWidget {
  final String photoURL;
  final String displayName;
  final String email;
  final VoidCallback onCameraTap;
  final VoidCallback onGalleryTap;

  const SettingsProfile({
    required this.photoURL,
    required this.displayName,
    required this.email,
    required this.onCameraTap,
    required this.onGalleryTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (photoURL.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: CustomCachedNetworkImage(
              imageUrl: photoURL,
              height: 64,
              width: 64,
              fit: BoxFit.cover,
              useOldImageOnUrlChange: true,
            ),
          )
        else
          const SizedBox.square(dimension: 64),
        const SizedBox(width: 18),
        GestureDetector(
          onTap: () => showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                title: const Text(
                  'Do you want to set a custom profile photo for you account?',
                ),
                actions: [
                  CupertinoActionSheetAction(
                    onPressed: () {
                      onCameraTap();
                      Navigator.pop(context);
                    },
                    child: const Text('Open Camera'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      onGalleryTap();
                      Navigator.pop(context);
                    },
                    child: const Text('Open Gallery'),
                  ),
                ],
              );
            },
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(displayName),
              const SizedBox(height: 4),
              Text(email),
            ],
          ),
        ),
      ],
    );
  }
}
