import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sneaker_client/sneaker_client.dart';
import 'package:sneaker_flutter/exception/create_comment_contain_digits.dart';
import 'package:sneaker_flutter/exception/create_comment_exception.dart';
import 'package:sneaker_flutter/exception/create_comment_name_contain_digits.dart';
import 'package:sneaker_flutter/screen/create_screen.dart';
import 'package:sneaker_flutter/utils/snackbar_extension.dart';

import '../main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    super.key,
    required this.brandId,
  });

  final int brandId;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

final formKey = GlobalKey<FormState>();

class _ProductScreenState extends State<ProductScreen> {
  final BehaviorSubject<Brand?> brandStream = BehaviorSubject();
  final BehaviorSubject<List<Comment>?> commentsStream = BehaviorSubject();
  final TextEditingController commentStream = TextEditingController();
  final TextEditingController nameStream = TextEditingController();

  @override
  void initState() {
    super.initState();
    client.brandEndPoint.getBrandById(widget.brandId).then(
      (value) {
        brandStream.value = value;
        client.commentEndPoint.getAcceptedCommentByBrand(widget.brandId).then(
          (value) {
            commentsStream.value = value;
          },
        );
        client.sessionEndPoint.getComment(widget.brandId).then(
          (value) {
            commentStream.text = value;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // key: ValueKey(widget.brandId),
      body: StreamBuilder<Brand?>(
        stream: brandStream,
        builder: (context, snapshot) {
          final product = snapshot.data;
          if (product == null) {
            return CircularProgressIndicator();
          }

          return Form(
            key: formKey,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                (width > 800)
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: PageView.builder(
                              itemCount: product.pictures?.length ?? 0,
                              itemBuilder: (context, index) {
                                final picture = product.pictures?[index];
                                if (picture == null) {
                                  return Container();
                                }
                                return CachedNetworkImage(imageUrl: picture ?? '');
                              },
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Gap(8),
                                  Text(
                                    '${product.price} ₽',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Gap(8),
                                  Text('${product.description}'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: PageView.builder(
                              itemCount: product.pictures?.length ?? 0,
                              itemBuilder: (context, index) {
                                final picture = product.pictures?[index];
                                if (picture == null) {
                                  return Container();
                                }
                                return CachedNetworkImage(imageUrl: picture ?? '');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Gap(8),
                                Text(
                                  '${product.price} ₽',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Gap(8),
                                Text('${product.description}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                ReviewField(
                  nameStream: nameStream,
                  commentStream: commentStream,
                  brandStream: brandStream,
                ),
                CommentField(commentsStream: commentsStream)
              ],
            ),
          );
        },
      ),
    );
  }
}

class CommentField extends StatelessWidget {
  const CommentField({
    super.key,
    required this.commentsStream,
  });

  final BehaviorSubject<List<Comment>?> commentsStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Comment>?>(
        stream: commentsStream,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null) {
            return SizedBox();
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Отзывы',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ...data.map(
                      (comment) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(comment.user?.name ?? ''),
                                  Gap(8),
                                  Text('${comment.rating}/5.0'),
                                ],
                              ),
                              Gap(8),
                              Text(comment.description ?? ''),
                            ],
                          ),
                        );
                      },
                    ).toList() ??
                    <Widget>[],
              ],
            ),
          );
        });
  }
}

class ReviewField extends StatelessWidget {
  const ReviewField({
    super.key,
    required this.commentStream,
    required this.nameStream,
    required this.brandStream,
  });

  final TextEditingController commentStream;
  final TextEditingController nameStream;
  final BehaviorSubject<Brand?> brandStream;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Оставьте свой отзыв',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            controller: nameStream,
            validator: (value) {
              if (value?.contains(RegExp(r'[0-9]')) ?? false) {
                throw CreateCommentNameContainDigits(
                  message: 'Имя содержит цифры',
                  why: 'Имя не должно содержать цифр',
                );
              }
            },
            decoration: InputDecoration(
              hintText: 'Ваше имя',
              label: Text('Представьтесь'),
            ),
            minLines: 1,
            maxLines: 1,
          ),
          TextFormField(
            validator: (value) {
              if (value?.contains(RegExp(r'[0-9]')) ?? false) {
                throw CreateCommentContainDigits(
                    reason: 'Комментарий содержит цифры', message: 'Комментарий не должен содержать цифр');
              }
            },
            decoration: InputDecoration(
              hintText: 'Ваш крутой отзыв!',
              label: Text('Отзыв'),
            ),
            controller: commentStream,
            onChanged: (value) {
              EasyDebounce.debounce(
                'text-change-debounce',
                Duration(milliseconds: 500),
                () {
                  final brandId = brandStream.value?.id;
                  if (brandId != null) {
                    client.sessionEndPoint.saveComment(
                      brandId,
                      commentStream.text,
                    );
                  }
                },
              );
            },
            // expands: true,
            minLines: 1,
            maxLines: 30,
          ),
          Gap(16),
          OutlinedButton(
            onPressed: () async {
              try {
                formKey.currentState!.validate();
              } on CreateCommentNameContainDigits catch (e) {
                context.showSnackBar(e.why);
                return;
              } on CreateCommentContainDigits catch (e) {
                context.showSnackBar(e.reason);
                return;
              } on CreateCommentException catch (e) {
                context.showSnackBar(e.message);
                return;
              }

              final brandId = brandStream.value?.id;
              if (brandId == null) {
                return;
              }
              try {
                await client.commentEndPoint.createComment(
                  Comment(
                    name: nameStream.text,
                    brandId: brandId,
                    userId: 1,
                    rating: 5.0,
                    description: commentStream.text,
                  ),
                  // brandId: brandId,
                  nameStream.text,
                  brandId,
                );
                context.showSnackBar('Успешно!');
              } on CommentCreateException catch (e) {
                context.showSnackBar(e.message);
              } catch (e) {
                context.showSnackBar(e.toString());
              }
            },
            child: Text('Оставить отзыв'),
          ),
        ],
      ),
    );
  }
}
