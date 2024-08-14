import 'package:flutter/cupertino.dart';
import 'package:test_prj_ivan/app/util/app_dialog_util.dart';
import 'package:test_prj_ivan/app/util/extension/context_extension.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';

final class FirebaseAuthDialogUtil {
  static void showFirebaseAuthFailure(
    BuildContext context, {
    required FirebaseAuthFailure failure,
  }) {
    var message = failure.message ?? '';

    if (failure is InvalidCredentialsFailure) {
      message = context.tr.firebaseAuthInvalidCredentialsFailure;
    }

    AppDialogUtil.showOkDialog(
      context,
      title: context.tr.generalErrorTitleOopsSomethingWentWrong,
      content: message,
    );
  }

  const FirebaseAuthDialogUtil._();
}
