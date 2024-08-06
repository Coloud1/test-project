sealed class LoginParams {
  const LoginParams();
}

class LoginParamsWithCredentials extends LoginParams {
  final String email;
  final String password;

  const LoginParamsWithCredentials({
    required this.email,
    required this.password,
  });
}

class LoginParamsAppleId extends LoginParams {
  const LoginParamsAppleId();
}

class LoginParamsGoogle extends LoginParams {
  const LoginParamsGoogle();
}

class LoginParamsGithub extends LoginParams {
  const LoginParamsGithub();
}

class LoginParamsPhone extends LoginParams {
  final String verificationId;
  final String smsCode;

  const LoginParamsPhone({
    required this.verificationId,
    required this.smsCode,
  });
}
