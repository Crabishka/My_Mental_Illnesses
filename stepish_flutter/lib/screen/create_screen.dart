import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sneaker_flutter/main.dart';
import 'package:sneaker_flutter/utils/snackbar_extension.dart';
import 'package:sneaker_client/sneaker_client.dart';
class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController nameController = TextEditingController();
  final BehaviorSubject<String?> nameErrorController = BehaviorSubject();

  final TextEditingController descriptionController = TextEditingController();
  final BehaviorSubject<String?> descriptionErrorController = BehaviorSubject();

  final TextEditingController priceController = TextEditingController();
  final BehaviorSubject<String?> priceErrorController = BehaviorSubject();

  final TextEditingController picturesController = TextEditingController();
  final BehaviorSubject<String?> picturesErrorController = BehaviorSubject();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              client.example.hello(')');
            },
            child: Text('Сгенерить базу'),
          ),
          ElevatedButton(
            onPressed: () {
              client.example.comments();
            },
            child: Text('Сгенерить комменты'),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       children: [
    //         InputTextField(
    //           controller: nameController,
    //           labelText: 'Название товара',
    //           hintText: 'Например, новые модные ботинки',
    //           textInputType: TextInputType.text,
    //           errorTextController: nameErrorController,
    //         ),
    //         const Gap(8),
    //         InputTextField(
    //           controller: descriptionController,
    //           labelText: 'Описание товара',
    //           hintText: 'Например, новые модные ботинки прекрасно подойдут для начала сезона...',
    //           textInputType: TextInputType.text,
    //           errorTextController: descriptionErrorController,
    //         ),
    //         const Gap(8),
    //         InputTextField(
    //           controller: priceController,
    //           labelText: 'Стоимость товара',
    //           hintText: '1990',
    //           suffixText: '₽',
    //           textInputType: TextInputType.number,
    //           errorTextController: priceErrorController,
    //         ),
    //         const Gap(8),
    //         InputTextField(
    //           controller: picturesController,
    //           expands: true,
    //           labelText: 'Ссылки на картинки',
    //           hintText: 'Вводите ссылки на каждую картинку на новой строке или через проблем',
    //           textInputType: TextInputType.text,
    //           errorTextController: picturesErrorController,
    //         ),
    //         const Gap(16),
    //         ElevatedButton(
    //           onPressed: () {
    //             final isValid = validate();
    //             if (!isValid) {
    //               /// TODO: исправить формулировку текста
    //               context.showSnackBar('Необходимо исправить ошибки в заявке');
    //               return;
    //             }
    //
    //             /// TODO: переписать на номер и текст ошибки
    //             final isCreate = create();
    //             if (!isCreate) {
    //               context.showSnackBar('Товар не был создан');
    //               return;
    //             }
    //             context.showSnackBar('Товар успешно создан');
    //             clear();
    //           },
    //           child: Text('Создать товар'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  bool validate() {
    if (nameController.text.isEmpty) {
      nameErrorController.value = 'Введите название товара';
      return false;
    }
    if (descriptionController.text.isEmpty) {
      descriptionErrorController.value = 'Введите описание товара';
      return false;
    }
    if (priceController.text.isEmpty) {
      priceErrorController.value = 'Укажите стоимость товара';
      return false;
    }
    if (picturesController.text.isEmpty) {
      picturesErrorController.value = 'Укажите картинки для товара';
      return false;
    }
    try {
      picturesController.text.split('[\s\n]');
    } catch (e) {
      picturesErrorController.value = 'Укажите картинки через пробел или на новой строке';
      return false;
    }
    return true;
  }

  bool create() {
    try {
      client.brandEndPoint.createProduct(
        Brand(
          name: nameController.text,
          price: double.parse(priceController.text),
          description: descriptionController.text,
          pictures: picturesController.text.split('[\s\n]'),
          manufacturerId: 1,
        ),
      );
    } catch (e) {
      return false;
    }
    return true;
  }

  void clear() {
    priceController.text = '';
    descriptionController.text = '';
    nameController.text = '';
    picturesController.text = '';
  }
}

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.controller,
    required this.textInputType,
    required this.errorTextController,
    this.labelText,
    this.suffixText,
    this.hintText,
    this.expands = false,
  });

  final TextEditingController controller;
  final BehaviorSubject<String?> errorTextController;
  final TextInputType textInputType;
  final String? labelText;
  final String? suffixText;
  final String? hintText;
  final bool expands;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String?>(
      stream: errorTextController,
      builder: (context, errorText) {
        return TextField(
          maxLines: expands == false ? 1 : 4,
          minLines: 1,
          controller: controller,
          keyboardType: textInputType,
          onChanged: (value) {
            errorTextController.value = null;
          },

          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,

            suffixText: suffixText,
            errorText: errorText.data,
          ),
        );
      },
    );
  }
}
