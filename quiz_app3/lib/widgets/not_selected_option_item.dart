import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app3/assets.dart';
import 'package:quiz_app3/theme/app_color.dart';
import 'package:quiz_app3/theme/app_decorations.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';

class NotSelectedOptionItem extends StatelessWidget {
  const NotSelectedOptionItem({super.key, required this.option});
  final String option;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          decoration: AppDecorations.notSelectedAnswerBackgroundDecoration,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColor.primary,
                child: CircleAvatar(
                  radius: 10.2,
                  backgroundColor: Colors.white,

                  child: SvgPicture.asset(
                    Assets.checkIcon,
                    colorFilter: ColorFilter.mode(
                      AppColor.primary,
                       BlendMode.srcIn),
                  )
                ),
              ),

              Text(
                option,
                style: AppTextStyles.bold20(color: AppColor.primary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
