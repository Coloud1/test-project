class LocationServiceException implements Exception {}

class LocationServiceDisabledException extends LocationServiceException {}

class LocationPermissionDeniedException extends LocationServiceException {}
