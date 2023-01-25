import 'package:clinic/core/models/doctorModel.dart';
import 'package:clinic/core/theme/app_colors.dart';
import 'package:clinic/core/theme/app_fonts.dart';
import 'package:clinic/resources/resources.dart';
import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  AppTabBar({super.key});

  DoctorModel model = DoctorModel(
      name: 'Айзан', lastName: 'Алишерова', phone: '+996 555 78 65 65');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Мой профиль',
            style: AppFonts.w700s34.copyWith(color: AppColors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.settings),
          )
        ],
        elevation: 0,
      ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: AppColors.light_blue,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(21),
                    child: Text(
                      'AA',
                      style: AppFonts.w500s40.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  width: 32,
                  height: 32,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(AppImages.camera),
                      // style: ButtonStyle(),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '${model.name} ${model.lastName}',
              style: AppFonts.w500s22,
            ),
            Text(
              model.phone,
              style: AppFonts.w400s18,
            ),
            TabBar(
              labelColor: Colors.blue.shade800,
              unselectedLabelColor: const Color(0xff4A86CC).withOpacity(0.5),
              tabs: const [
                Tab(
                  icon: ImageIcon(AssetImage(AppImages.iconTap1)),
                  text: "Анализы",
                ),
                Tab(
                  icon: ImageIcon(AssetImage(AppImages.iconTap2)),
                  text: "Диагнозы",
                ),
                Tab(
                  icon: ImageIcon(AssetImage(AppImages.iconTap3)),
                  text: "Рекомендации",
                ),
              ],
            ),
            const Flexible(
              child: TabBarView(
                children: <Widget>[
                  TabItem(
                      text: 'У вас пока нет добавленных результатов анализов',
                      image: AppImages.clipboard),
                  TabItem(
                      text: 'У вас пока нет добавленных диагнозов',
                      image: AppImages.clipboard),
                  TabItem(
                      text: 'У вас пока нет добавленных рекомендаций',
                      image: AppImages.clipboard)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Image.asset(image),
          const SizedBox(
            height: 22,
          ),
          Text(text),
          const SizedBox(
            height: 33,
          ),
          TextButton(onPressed: () {}, child: const Text('Добавить документ'))
        ],
      ),
    );
  }
}
