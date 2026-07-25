import 'package:flutter/material.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/features/home/domain/entities/recipe_entity.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/creator_section.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/ingredients_tab.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/instructions_tab.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/recipe_info_item.dart';
import 'package:task3/features/recipeDetails/presentation/widgets/related_recipes_section.dart';

import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/widgets/custom_icon_button.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key, required this.recipeEntity});
  final RecipeEntity recipeEntity;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: AppHeight.s270,
              width: double.infinity,
              child: Image.network(recipeEntity.image, fit: .cover),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppWidth.s24,vertical: AppHeight.s30),
                child: Row(
                  children: [
                    CustomIconButton(
                      icon: IconAssets.close,
                      width: AppWidth.s40,
                      height: AppHeight.s40,
                      iconWidth: AppWidth.s24,
                      iconHeight: AppHeight.s24,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Spacer(),
                    CustomIconButton(
                      icon: IconAssets.heart,
                      width: AppWidth.s40,
                      height: AppHeight.s40,
                      iconWidth: AppWidth.s24,
                      iconHeight: AppHeight.s24,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.72,
              minChildSize: 0.5,
              maxChildSize: 0.92,
              builder: (context, scrollController) {
                final tabController = DefaultTabController.of(context);
                return Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppRadius.s25),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          SizedBox(height: AppHeight.s12),
                          Align(
                            alignment: .center,
                            child: Container(
                              height: AppHeight.s5,
                              width: AppWidth.s50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  AppRadius.s12,
                                ),
                                color: ColorManager.neutralGrey4,
                              ),
                            ),
                          ),
                          SizedBox(height: AppHeight.s23),
                          Row(
                            children: [
                              SizedBox(
                                width: AppWidth.s250,
                                child: Text(
                                  recipeEntity.name,
                                  overflow: .ellipsis,
                                  style: getExtraBoldStyle(
                                    fontFamily: FontConstants.sofiaPro,
                                    fontSize: FontSize.s24,
                                    color: ColorManager.brandPrimary,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                IconAssets.time,
                                color: ColorManager.neutralGrey3,
                              ),
                              SizedBox(width: AppWidth.s6),
                              Text(
                                "${recipeEntity.cookTimeMinutes}Min",
                                style: getRegularStyle(
                                  fontSize: FontSize.s14,
                                  color: ColorManager.neutralGrey3,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppHeight.s20),
                          RecipeInfoItem(
                            icon: IconAssets.calories,
                            text: '${recipeEntity.caloriesPerServing} Kcal',
                          ),
                          SizedBox(height: AppHeight.s24),
                          Container(
                            padding: EdgeInsets.all(AppWidth.s5),
                            decoration: BoxDecoration(
                              color: ColorManager.neutralGrey5,
                              borderRadius: BorderRadius.circular(AppRadius.s16),
                            ),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: ColorManager.brandPrimary,
                                borderRadius: BorderRadius.circular(
                                  AppRadius.s12,
                                ),
                              ),
                              indicatorSize: TabBarIndicatorSize.tab,
                              dividerColor: Colors.transparent,
                              splashBorderRadius: BorderRadius.circular(
                                AppRadius.s12,
                              ),
                              labelColor: ColorManager.white,
                              unselectedLabelColor: ColorManager.naturalDark,
                              labelStyle: getBoldStyle(fontSize: FontSize.s16),
                              unselectedLabelStyle: getSemiBoldStyle(
                                fontSize: FontSize.s16,
                              ),
                              tabs: const [
                                Tab(text: 'Ingredients'),
                                Tab(text: 'Instructions'),
                              ],
                            ),
                          ),
                          SizedBox(height: AppHeight.s20),
                          AnimatedBuilder(
                            animation: tabController,
                            builder: (_, _) {
                              return tabController.index == 0
                                  ? IngredientsTab(
                                      ingredients: recipeEntity.ingredients,
                                    )
                                  : InstructionsTab(
                                      instructions: recipeEntity.instructions,
                                    );
                            },
                          ),
                          SizedBox(height: AppHeight.s24),
                          Divider(
                            height: AppHeight.s1,
                            thickness: AppHeight.s1,
                            color: ColorManager.neutralGrey4,
                          ),
                          SizedBox(height: AppHeight.s20),
                          const CreatorSection(),
                          SizedBox(height: AppHeight.s24),
                          const RelatedRecipesSection(),
                          SizedBox(height: AppHeight.s24),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
