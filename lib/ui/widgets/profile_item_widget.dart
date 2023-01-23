import 'package:clinic/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ProfileItemWidget extends StatelessWidget {
  final String text, icon;

  const ProfileItemWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 70),
        Image.asset(icon),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: AppFonts.w400s15,
            softWrap: true,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
