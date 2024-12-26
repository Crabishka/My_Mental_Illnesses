import 'package:serverpod/server.dart';
import 'package:sneaker_server/src/generated/brand.dart';
import 'package:sneaker_server/src/generated/comment.dart';

class AuthEndPoint extends Endpoint {
  Future<void> createComment(Session session, Comment comment) async {
    Comment.db.insertRow(
      session,
      comment,
    );
  }
}
