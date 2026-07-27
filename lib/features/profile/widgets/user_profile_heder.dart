import 'package:flutter/material.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/widgets/custom_icon_button.dart';
import 'package:task3/features/auth/domain/entities/user_entity.dart';


class UserProfileHeder extends StatelessWidget {
  const UserProfileHeder({super.key, required this.userEntity});
  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSize.s16),
      height: AppHeight.s80,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppRadius.s16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 16,
            spreadRadius: 0,
            color: Color(0xff063336).withValues(alpha: .1),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.network(
            userEntity.image,
            width: AppWidth.s48,
            height: AppHeight.s48,
            fit: .contain,
          ),
          SizedBox(width: AppWidth.s16),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "${userEntity.firstName} ${userEntity.lastName}",
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: getExtraBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s16,
                    color: ColorManager.naturalDark,
                  ),
                ),
                Text(
                  userEntity.email,
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: getRegularStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s14,
                    color: ColorManager.neutralGrey1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppWidth.s16),
          CustomIconButton(
            icon: IconAssets.arrowRight,
            backgroundColor: ColorManager.black,
            width: AppWidth.s28,
            height: AppHeight.s28,
            iconHeight: AppHeight.s16,
            iconWidth: AppWidth.s16,
          ),
        ],
      ),
    );
  }
}
