import 'package:clinic/core/theme/app_colors.dart';
import 'package:clinic/core/theme/app_fonts.dart';
import 'package:clinic/resources/resources.dart';
import 'package:clinic/ui/screen/login_screen.dart';
import 'package:clinic/ui/widgets/primary_button_widget.dart';
import 'package:clinic/ui/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Профиль',
          style: AppFonts.w600s17.copyWith(color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.settings),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'Зачем нужен профиль?',
              style: AppFonts.w500s22.copyWith(color: AppColors.black),
            ),
            const ProfileItemWidget(
              text: 'Записывайтесь на прием к самым лучшим специалистам',
              icon: AppImages.hospital,
            ),
            const ProfileItemWidget(
              text:
                  'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
              icon: AppImages.clipboard,
            ),
            const ProfileItemWidget(
              text:
                  'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
              icon: AppImages.message,
            ),
            const ProfileItemWidget(
              text:
                  'Получайте уведомления о приеме или о поступивших сообщениях',
              icon: AppImages.bellhop,
            ),
            PrimaryButton(
              text: 'Войти',
              onPressed: () {
                print('Enter');

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
