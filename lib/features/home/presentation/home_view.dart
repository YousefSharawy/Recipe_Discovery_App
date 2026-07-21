import 'package:flutter/material.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/features/home/presentation/widgets/categories_filter_row.dart';
import 'package:task3/features/home/presentation/widgets/custom_featured_container.dart';
import 'package:task3/features/home/presentation/widgets/header_row.dart';
import 'package:task3/features/home/presentation/widgets/recipe_conatiner.dart';
import 'package:task3/features/home/presentation/widgets/welcomn_column.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import '../../../core/resources/typography_manager.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<String> categoryFilters = ["Breakfast", "Lunch", "Dinner"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.s24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: AppHeight.s14),
                Row(
                  children: [
                    WelcomnColumn(),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(IconAssets.cart),
                    ),
                  ],
                ),
                SizedBox(height: AppHeight.s24),
                Text(
                  "Featured",
                  style: getExtraBoldStyle(
                    fontFamily: FontConstants.sofiaPro,
                    fontSize: FontSize.s20,
                    color: ColorManager.naturalDark,
                  ),
                ),
                SizedBox(height: AppHeight.s12),
                SizedBox(
                  height: AppHeight.s175,
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: .horizontal,
                    itemBuilder: ((_, index) {
                      return CustomFeaturedContainer();
                    }),
                  ),
                ),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: 'Category', onTap: () {}),
                CategoriesFilterRow(filters: categoryFilters),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: 'Popular Recipes', onTap: () {}),
                SizedBox(
                  height: AppHeight.s240,
                  child: ListView.builder(
                    scrollDirection: .horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return  RecipeConatiner();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}