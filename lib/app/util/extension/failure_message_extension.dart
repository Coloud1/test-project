//@formatter:off

import 'package:flutter/material.dart';

import 'package:test_prj_ivan/app/localization/generated/l10n.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/failure/api_failure.dart';

extension FailureMessageExtension on BuildContext {
  String getApiFailureMessage(ApiFailure failure) {
    switch (failure.failure) {
      case ServerFailure.noNetwork:
        return S.current.apiFailureNoNetwork;
      case ServerFailure.exception:
        return S.current.apiFailureUndefined;
      case ServerFailure.unAuthorized:
        return S.current.apiFailureUnAuthorized;
      case ServerFailure.tooManyRequests:
        return S.current.apiFailureTooManyRequests;
      case ServerFailure.response:
        return failure.message;
      case ServerFailure.unknown:
        return S.current.apiFailureUndefined;
    }
  }
}
