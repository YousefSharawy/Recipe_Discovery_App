import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/core/resources/assets_manager.dart';
import 'package:task3/core/resources/font_manager.dart';
import 'package:task3/core/resources/spacing_values_manager.dart';
import 'package:task3/core/resources/typography_manager.dart';
import 'package:task3/core/widgets/custom_text_form_field.dart';
import 'package:task3/features/home/presentation/widgets/categories_filter_row.dart';
import 'package:task3/features/home/presentation/widgets/header_row.dart';
import 'package:task3/features/search/presentation/widgets/editor_choice_container.dart';
import 'package:task3/features/search/presentation/widgets/search_recipe_container.dart';

import '../../../core/resources/color_manager.dart';
import '../../home/presentation/controller/home_controller.dart';
import '../../home/presentation/controller/home_states.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
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
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: AppHeight.s16),
                Align(
                  alignment: .center,
                  child: Text(
                    "Search",
                    style: getBoldStyle(
                      fontFamily: FontConstants.sofiaPro,
                      fontSize: FontSize.s24,
                      color: ColorManager.naturalDark,
                    ),
                  ),
                ),
                SizedBox(height: AppHeight.s26),
                CustomTextFormField(
                  hint: "Search",
                  prefixIconAsset: IconAssets.search,
                ),
                SizedBox(height: AppHeight.s33),
                CategoriesFilterRow(filters: categoryFilters),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: "Popular Recipes", onTap: () {}),
                SizedBox(height: AppHeight.s12),
                SizedBox(
                  height: AppHeight.s140,
                  child: Consumer<HomeController>(
                    builder: (context, controller, _) =>
                        switch (controller.state) {
                          HomeLoading() => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          HomeError(:final message) => Center(
                            child: Text(message),
                          ),
                          HomeSuccess(:final recipes) => ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) =>
                                SearchRecipeContainer(recipe: recipes[index]),
                          ),
                          HomeInitial() => const SizedBox.shrink(),
                        },
                  ),
                ),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: "Editor's Choice", onTap: () {}),
                SizedBox(height: AppHeight.s12),
                Consumer<HomeController>(
                  builder: (context, controller, _) => switch (controller.state) {
                    HomeLoading() => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    HomeError(:final message) => Center(child: Text(message)),
                    HomeSuccess(:final recipes) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      clipBehavior: Clip.none,
                      padding: EdgeInsets.only(top: AppHeight.s8),
                      itemCount: 6,
                      itemBuilder: (context, index) =>
                          EditorChoiceContainer(recipe: recipes[index]),
                    ),
                    HomeInitial() => const SizedBox.shrink(),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
