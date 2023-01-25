import 'package:clinic/core/theme/app_colors.dart';
import 'package:clinic/core/theme/app_fonts.dart';
import 'package:clinic/resources/resources.dart';
import 'package:clinic/ui/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var maskFormatter = MaskTextInputFormatter(
      mask: '+996 (###) ##-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  final _controller = TextEditingController();
  String? _errorText;
  FocusNode inputNode = FocusNode();
  void openKeyboard() {
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Вход',
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Image.asset(AppImages.clear),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Войти', style: AppFonts.w700s34),
            const Text(
              'Номер телефона',
              style: AppFonts.w400s15,
            ),
            TextField(
              onChanged: (text) {
                if (maskFormatter.getUnmaskedText().length == 9 ||
                    maskFormatter.getUnmaskedText().isEmpty) {
                  _errorText = null;
                } else {
                  _errorText = 'Введите номер';
                }
                print(_errorText);
                setState(() {});
              },
              keyboardType: TextInputType.phone,
              inputFormatters: <TextInputFormatter>[
                maskFormatter,
                // FilteringTextInputFormatter.digitsOnly
              ],
              style: AppFonts.w700s17,
              autofocus: true,
              focusNode: inputNode,
              decoration: InputDecoration(
                errorText: _errorText,
                hintText: '+996 (_ _ _)  _ _ -  _ _ - _ _',
                // prefix: Text('0 ', style: AppFonts.w700s17),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.gray, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: AppFonts.w400s15,
            ),
            const SizedBox(height: 100),
            PrimaryButton(
              onPressed: () {
                // print(maskFormatter.getUnmaskedText());
                print(maskFormatter.getUnmaskedText());
              },
              text: 'Далее',
            )
          ],
        ),
      ),
    );
  }
}
