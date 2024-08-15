import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_prj_ivan/presentation/widgets/custom_cached_network_image.dart';

class SettingsProfile extends StatelessWidget {
  final String photoURL;
  final String displayName;
  final String email;
  final VoidCallback onCameraTap;
  final VoidCallback onGalleryTap;
  final VoidCallback onDeleteTap;

  const SettingsProfile({
    required this.photoURL,
    required this.displayName,
    required this.email,
    required this.onCameraTap,
    required this.onGalleryTap,
    required this.onDeleteTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => _changePhoto(context),
          child: photoURL.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(90),
                  child: CustomCachedNetworkImage(
                    imageUrl: photoURL,
                    height: 64,
                    width: 64,
                    fit: BoxFit.cover,
                    useOldImageOnUrlChange: true,
                    placeholder: (context, v) {
                      return Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                        child: const Center(
                          child: Icon(Icons.person),
                        ),
                      );
                    },
                  ),
                )
              : Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  child: const Center(
                    child: Icon(Icons.person),
                  ),
                ),
        ),
        const SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(displayName),
            const SizedBox(height: 4),
            Text(email),
          ],
        ),
      ],
    );
  }

  void _changePhoto(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text(
            photoURL.isEmpty
                ? 'Do you want to set a custom profile photo for your account?'
                : 'Do you want to change a profile photo for your account?',
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
            CupertinoActionSheetAction(
              onPressed: () {
                onDeleteTap();
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              child: const Text('Delete photo'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        );
      },
    );
  }
}
