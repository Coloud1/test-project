abstract class Failure {
  const Failure();
}

class CommonFailure implements Failure {
  CommonFailure(this.e);

  Exception e;
}

class DataSourceFailure implements Failure {
  DataSourceFailure(this.e);

  Exception e;
}

abstract class FeatureFailure implements Failure {}
