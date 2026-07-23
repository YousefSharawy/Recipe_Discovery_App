import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.hint,
    this.label,
    this.validator,
    this.controller,
    this.prefixIcon,
    this.prefixIconAsset,
    this.maxLines = 1,
    this.isPassword = false,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.keyboardType,
    this.filledColor,
    this.textAlign = TextAlign.left,
  });
  final String? hint;
  final String? label;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? prefixIconAsset;
  final int maxLines;
  final bool isPassword;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Color? filledColor;
  final TextAlign textAlign;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppRadius.s16),
    borderSide: BorderSide(color: color, width: 1.sp),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: getBoldStyle(
              fontFamily: FontConstants.sofiaPro,
              fontSize: FontSize.s14,
              color: ColorManager.naturalDark,
            ),
          ),
          SizedBox(height: AppHeight.s8),
        ],
        TextFormField(
          maxLines: widget.maxLines,
          expands: false,
          keyboardType: widget.keyboardType,
          obscureText: isObscure,
          readOnly: widget.readOnly,
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUnfocus,
          onTap: widget.onTap,
          onChanged: widget.onChanged,
          validator: widget.validator,
          textAlign: widget.textAlign,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: ColorManager.brandSecondary,
          style: getMediumStyle(
            fontFamily: FontConstants.sofiaPro,
            fontSize: FontSize.s16,
            color: ColorManager.naturalDark,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.filledColor ?? ColorManager.white,
            contentPadding: EdgeInsets.symmetric(
              vertical: AppHeight.s16,
              horizontal: AppWidth.s13,
            ),
            hintText: widget.hint,
            hintStyle: getMediumStyle(
              fontFamily: FontConstants.sofiaPro,
              fontSize: FontSize.s16,
              color: ColorManager.neutralGrey2,
            ),
            border: _border(ColorManager.neutralGrey4),
            enabledBorder: _border(ColorManager.neutralGrey4),
            focusedBorder: _border(ColorManager.brandSecondary),
            errorBorder: _border(ColorManager.error),
            focusedErrorBorder: _border(ColorManager.error),
            errorStyle: getRegularStyle(
              fontFamily: FontConstants.sofiaPro,
              fontSize: FontSize.s12,
              color: ColorManager.error,
            ),
            errorMaxLines: 1,
            prefixIcon: widget.prefixIconAsset != null
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.s13),
                    child: SvgPicture.asset(
                      widget.prefixIconAsset!,
                      width: AppSize.s22,
                      height: AppSize.s22,
                      fit: BoxFit.scaleDown,
                      colorFilter: ColorFilter.mode(
                        ColorManager.neutralGrey2,
                        BlendMode.srcIn,
                      ),
                    ),
                  )
                : widget.prefixIcon != null
                ? Icon(
                    widget.prefixIcon,
                    size: AppSize.s22,
                    color: ColorManager.neutralGrey2,
                  )
                : null,
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      size: AppSize.s22,
                      color: ColorManager.neutralGrey2,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
