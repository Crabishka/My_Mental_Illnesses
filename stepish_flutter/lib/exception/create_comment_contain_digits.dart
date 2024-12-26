import 'package:sneaker_flutter/exception/create_comment_exception.dart';

class CreateCommentContainDigits extends CreateCommentException {
  final String reason;

  CreateCommentContainDigits({
    required this.reason,
    required super.message,
  });
}
