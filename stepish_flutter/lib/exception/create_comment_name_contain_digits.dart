import 'package:sneaker_flutter/exception/create_comment_exception.dart';

class CreateCommentNameContainDigits extends CreateCommentException {
  final String why;

  CreateCommentNameContainDigits({
    required this.why,
    required super.message,
  });
}
