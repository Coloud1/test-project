enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Test Prj Ivan Dev';
      case Flavor.prod:
        return 'Test Prj Ivan';
      default:
        return 'title';
    }
  }
}
