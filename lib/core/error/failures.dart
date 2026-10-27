/// Domain-layer failure.
abstract class Failure {
  final String message;
  const Failure(this.message);
}

/// General database/data access failure.
class DataFailure extends Failure {
  const DataFailure(super.message);
}

/// Not-found failure.
class NotFoundFailure extends Failure {
  const NotFoundFailure(super.message);
}
