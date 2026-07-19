/// Domain-level failure carried through `Either<Failure, T>` (dartz).
///
/// Same shape/role as t3afy's `Failture` (carries a code + a user-facing
/// message), with the spelling corrected per the clean-structure decision.
class Failure {
  final int code;
  final String message;

  const Failure(this.code, this.message);

  @override
  String toString() => 'Failure($code, $message)';
}
