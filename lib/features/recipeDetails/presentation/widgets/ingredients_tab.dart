import 'package:flutter/material.dart';
import 'package:task3/core/resources/color_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/widgets/custom_elevated_button.dart';
import 'package:task3/features/home/presentation/widgets/header_row.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/ingredient_item_card.dart';

class IngredientsTab extends StatefulWidget {
  const IngredientsTab({super.key, required this.ingredients});

  final List<String> ingredients;

  @override
  State<IngredientsTab> createState() => _IngredientsTabState();
}

class _IngredientsTabState extends State<IngredientsTab> {
  late final List<int> _quantities;

  @override
  void initState() {
    super.initState();
    _quantities = List<int>.filled(widget.ingredients.length, 1);
  }

  void _increment(int index) => setState(() => _quantities[index]++);

  void _decrement(int index) {
    if (_quantities[index] > 1) {
      setState(() => _quantities[index]--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderRow(header: "Ingradients", onTap: (){},buttonText: "Add All to Cart",),
        SizedBox(height: AppHeight.s4),
        Text(
          '${widget.ingredients.length} Item',
          style: getRegularStyle(
            fontSize: FontSize.s14,
            color: ColorManager.neutralGrey3,
          ),
        ),
        SizedBox(height: AppHeight.s16),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: widget.ingredients.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: AppHeight.s16),
              child: IngredientItemCard(
                name: widget.ingredients[index],
                quantity: _quantities[index],
                onIncrement: () => _increment(index),
                onDecrement: () => _decrement(index),
              ),
            );
          },
        ),

        SizedBox(height: AppHeight.s8),

       CustomElevatedButton(title: "Add To Cart", onPress: (){},backGroundColor: ColorManager.brandSecondary,textColor: ColorManager.white,),
      ],
    );
  }
}
