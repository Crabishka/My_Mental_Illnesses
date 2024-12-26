import 'package:serverpod/server.dart';
import 'package:sneaker_server/src/generated/brand.dart';
import 'package:sneaker_server/src/generated/comment.dart';
import 'package:sneaker_server/src/generated/protocol.dart';

class CommentEndPoint extends Endpoint {
  Future<void> createComment(Session session, Comment comment, String? name, int? brandId) async {
    if (name?.isEmpty ?? true) {
      throw CommentCreateException(message: 'Пустое имя', errorType: '418');
    }
    if (brandId == null) {
      throw CommentCreateException(message: 'Такого бренда нет', errorType: '418');
    }
    if (comment.description?.contains('w') ?? false) {
      throw CommentCreateException(message: 'Комментарий не должен содержать w', errorType: '418');
    }

    /// здесь можно найти юзера
    try {
      await Comment.db.insertRow(
        session,
        comment.copyWith(
          user: comment.user?.copyWith(
            name: name,
          ),
          brandId: brandId,
          isAccepted: true,
        ),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<Comment>> getAcceptedCommentByBrand(Session session, int brandId) async {
    return Comment.db.find(
      session,
      where: (comment) => comment.brandId.equals(brandId) & comment.isAccepted.equals(true),
      orderBy: (comment) => comment.rating,
      include: Comment.include(user: User.include()),
      orderDescending: true,
    );
  }

  Future<List<Comment>> getUnAcceptedCommentByBrand(Session session, int brandId) async {
    return Comment.db.find(
      session,
      where: (comment) => comment.brandId.equals(brandId) & comment.isAccepted.equals(false),
    );
  }

  Future<List<Comment>> getAllUnAcceptedCommentByBrand(Session session) async {
    return Comment.db.find(
      session,
      where: (comment) => comment.isAccepted.equals(false),
    );
  }

  Future<List<Comment>> getAllCommentByBrand(Session session, int brandId) async {
    return Comment.db.find(
      session,
      where: (comment) => comment.brandId.equals(brandId),
    );
  }

  Future<Comment?> getCommentById(Session session, int id) async {
    return Comment.db.findById(session, id);
  }

  Future<List<Comment>> deleteCommentById(Session session, int id) async {
    return Comment.db.deleteWhere(
      session,
      where: (comment) => comment.brandId.equals(id),
    );
  }
}
