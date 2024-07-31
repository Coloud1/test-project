class Constants {
  static RegExp passwordRegExp =
      RegExp('[A-Za-z0-9!"`\\\'#%&,:;<>=@{}~\$()*+/\\?_^|.-]');

  static RegExp passwordUpperCaseRegExp = RegExp('[A-Z]{1,}');

  static RegExp passwordLowerCaseRegExp = RegExp('[a-z]{1,}');

  static RegExp passwordSpecialCharactersRegExp =
      RegExp('[!"`\\\'#%&,:;<>=@{}~\$()*+/\\?_^|.-]');

  static RegExp emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  const Constants._();
}
