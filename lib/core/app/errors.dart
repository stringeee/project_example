abstract class Failure {
  final String e;

  const Failure(this.e);
}

class DefaultFailure extends Failure {
  final String error;

  const DefaultFailure(this.error) : super(error);
}
