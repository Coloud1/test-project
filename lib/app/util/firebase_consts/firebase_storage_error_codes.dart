final class FirebaseStorageErrorCodes {
  static const String unknown = 'storage/unknown'; // An unknown error occurred.

  static const String objectNotFound =
      'storage/object-not-found'; // No object exists at the desired reference.

  static const String bucketNotFound =
      'storage/bucket-not-found'; // No bucket is configured for Cloud Storage.

  static const String projectNotFound =
      'storage/project-not-found'; // No project is configured for Cloud Storage.

  static const String quotaExceeded =
      'storage/quota-exceeded'; // Quota on your Cloud Storage bucket has been exceeded.

  static const String unauthenticated =
      'storage/unauthenticated'; // User is unauthenticated, please authenticate and try again.

  static const String unauthorized =
      'storage/unauthorized'; // User is not authorized to perform the desired action.

  static const String retryLimitExceeded =
      'storage/retry-limit-exceeded'; // The maximum time limit on an operation has been exceeded.

  static const String invalidChecksum =
      'storage/invalid-checksum'; // File on the client does not match the checksum of the file received by the server.

  static const String canceled =
      'storage/canceled'; // User canceled the operation.

  static const String invalidEventName =
      'storage/invalid-event-name'; // Invalid event name provided.

  static const String invalidUrl =
      'storage/invalid-url'; // Invalid URL provided to refFromURL().

  static const String invalidArgument =
      'storage/invalid-argument'; // The argument passed to put() must be File, Blob, or UInt8 Array.

  static const String noDefaultBucket =
      'storage/no-default-bucket'; // No bucket has been set in your config's storageBucket property.

  static const String cannotSliceBlob =
      'storage/cannot-slice-blob'; // Commonly occurs when the local file has changed.

  static const String serverFileWrongSize =
      'storage/server-file-wrong-size'; // File on the client does not match the size of the file received by the server.

  const FirebaseStorageErrorCodes._();
}
