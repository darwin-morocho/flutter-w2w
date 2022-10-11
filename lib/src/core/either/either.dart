import 'package:freezed_annotation/freezed_annotation.dart';

part 'either.freezed.dart';

@freezed
class Either<L, R> with _$Either<L, R> {
  const Either._();
  const factory Either.left(L value) = Left;
  const factory Either.right(R value) = Right;

  bool get isLeft => this is Left;
  bool get isRight => this is Right;

  L get left => (this as Left).value;
  R get right => (this as Right).value;
}
