final class FirebaseStorageErrorCodes {
  static const String unknown = 'storage/unknown'; // An unknown error occurred.

  static const String objectNotFound =
      'firebase_storage/object-not-found'; // No object exists at the desired reference.

  static const String bucketNotFound =
      'firebase_storage/bucket-not-found'; // No bucket is configured for Cloud Storage.

  static const String projectNotFound =
      'firebase_storage/project-not-found'; // No project is configured for Cloud Storage.

  static const String quotaExceeded =
      'firebase_storage/quota-exceeded'; // Quota on your Cloud Storage bucket has been exceeded.

  static const String unauthenticated =
      'firebase_storage/unauthenticated'; // User is unauthenticated, please authenticate and try again.

  static const String unauthorized =
      'firebase_storage/unauthorized'; // User is not authorized to perform the desired action.

  static const String retryLimitExceeded =
      'firebase_storage/retry-limit-exceeded'; // The maximum time limit on an operation has been exceeded.

  static const String invalidChecksum =
      'firebase_storage/invalid-checksum'; // File on the client does not match the checksum of the file received by the server.

  static const String canceled =
      'firebase_storage/canceled'; // User canceled the operation.

  static const String invalidEventName =
      'firebase_storage/invalid-event-name'; // Invalid event name provided.

  static const String invalidUrl =
      'firebase_storage/invalid-url'; // Invalid URL provided to refFromURL().

  static const String invalidArgument =
      'firebase_storage/invalid-argument'; // The argument passed to put() must be File, Blob, or UInt8 Array.

  static const String noDefaultBucket =
      'firebase_storage/no-default-bucket'; // No bucket has been set in your config's storageBucket property.

  static const String cannotSliceBlob =
      'firebase_storage/cannot-slice-blob'; // Commonly occurs when the local file has changed.

  static const String serverFileWrongSize =
      'firebase_storage/server-file-wrong-size'; // File on the client does not match the size of the file received by the server.

  const FirebaseStorageErrorCodes._();
}
