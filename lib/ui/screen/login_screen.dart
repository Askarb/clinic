import 'package:clinic/core/theme/app_colors.dart';
import 'package:clinic/core/theme/app_fonts.dart';
import 'package:clinic/resources/resources.dart';
import 'package:clinic/ui/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.whihe,
          title: Text(
            'Вход',
            style: AppFonts.w600s17.copyWith(color: AppColors.black),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.clear),
          )),
      body: Container(
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
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: AppFonts.w700s17,
              decoration: const InputDecoration(
                hintText: '_ _ _  _ _ _  _ _ _',
                prefix: Text('0 ', style: AppFonts.w700s17),
                enabledBorder: UnderlineInputBorder(
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
              onPressed: () {},
              text: 'Далее',
            )
          ],
        ),
      ),
    );
  }
}
