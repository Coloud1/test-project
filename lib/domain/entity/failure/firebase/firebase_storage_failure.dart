import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

sealed class FirebaseStorageFailure implements FeatureFailure {
  const FirebaseStorageFailure(this.message);

  final String? message;
}

class FirebaseStorageUnknownFailure extends FirebaseStorageFailure {
  const FirebaseStorageUnknownFailure(super.message);
}

class FirebaseStorageObjectNotFoundFailure extends FirebaseStorageFailure {
  const FirebaseStorageObjectNotFoundFailure(super.message);
}

class FirebaseStorageBucketNotFoundFailure extends FirebaseStorageFailure {
  const FirebaseStorageBucketNotFoundFailure(super.message);
}

class FirebaseStorageProjectNotFoundFailure extends FirebaseStorageFailure {
  const FirebaseStorageProjectNotFoundFailure(super.message);
}

class FirebaseStorageQuotaExceededFailure extends FirebaseStorageFailure {
  const FirebaseStorageQuotaExceededFailure(super.message);
}

class FirebaseStorageUnauthenticatedFailure extends FirebaseStorageFailure {
  const FirebaseStorageUnauthenticatedFailure(super.message);
}

class FirebaseStorageUnauthorizedFailure extends FirebaseStorageFailure {
  const FirebaseStorageUnauthorizedFailure(super.message);
}

class FirebaseStorageRetryLimitExceededFailure extends FirebaseStorageFailure {
  const FirebaseStorageRetryLimitExceededFailure(super.message);
}

class FirebaseStorageInvalidChecksumFailure extends FirebaseStorageFailure {
  const FirebaseStorageInvalidChecksumFailure(super.message);
}

class FirebaseStorageCanceledFailure extends FirebaseStorageFailure {
  const FirebaseStorageCanceledFailure(super.message);
}

class FirebaseStorageInvalidEventNameFailure extends FirebaseStorageFailure {
  const FirebaseStorageInvalidEventNameFailure(super.message);
}

class FirebaseStorageInvalidUrlFailure extends FirebaseStorageFailure {
  const FirebaseStorageInvalidUrlFailure(super.message);
}

class FirebaseStorageInvalidArgumentFailure extends FirebaseStorageFailure {
  const FirebaseStorageInvalidArgumentFailure(super.message);
}

class FirebaseStorageNoDefaultBucketFailure extends FirebaseStorageFailure {
  const FirebaseStorageNoDefaultBucketFailure(super.message);
}

class FirebaseStorageCannotSliceBlobFailure extends FirebaseStorageFailure {
  const FirebaseStorageCannotSliceBlobFailure(super.message);
}

class FirebaseStorageServerFileWrongSizeFailure extends FirebaseStorageFailure {
  const FirebaseStorageServerFileWrongSizeFailure(super.message);
}
