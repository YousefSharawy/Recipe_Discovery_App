import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/features/cart/domain/entities/product_entity.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppRadius.s16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff063336).withValues(alpha: 0.1),
            blurRadius: 16,
            spreadRadius: 0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppRadius.s16),
                child: Image.network(
                  product.thumbnail,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Text("This image is camera shy"),
                ),
              ),
            ),
            SizedBox(height: AppHeight.s12),
            Text(
              product.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: getBoldStyle(
                fontFamily: FontConstants.sofiaPro,
                fontSize: FontSize.s16,
                color: ColorManager.naturalDark,
              ),
            ),
            SizedBox(height: AppHeight.s4),
            Row(
              children: [
                Text(
                  "\$${product.price}",
                  style: getSemiBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s14,
                    color: ColorManager.brandSecondary,
                  ),
                ),
                const Spacer(),
                Text(
                  "x${product.quantity}",
                  style: getRegularStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s12,
                    color: ColorManager.neutralGrey2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
