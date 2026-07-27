import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task3/core/injection.dart';
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
import '../../home/presentation/widgets/recipe_conatiner.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});
  final List<String> categoryFilters = ["Breakfast", "Lunch", "Dinner"];

  @override
  Widget build(BuildContext context) {
    final hc = getIt<HomeController>();
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
                  onFieldSubmitted: (value) {
                    if (value.trim().isNotEmpty) {
                      hc.searchOnRecipe(value);
                    }
                  },
                  onChanged: (value) {
                    if (value.trim().isEmpty) {
                      hc.emitSeacrh(HomeStates.searchRecipeInitial());
                    }
                  },

                  hint: "Search",
                  prefixIconAsset: IconAssets.search,
                ),
                SizedBox(height: AppHeight.s33),
              CategoriesFilterRow(
                  filters: categoryFilters,
                  onSelected: (mealType) {
                    getIt<HomeController>().getRecipesByMealType(
                      mealType: mealType,
                    );
                  },
                ),
                SizedBox(height: AppHeight.s24),
                SizedBox(
                  height: AppHeight.s140,
                  child: Selector<HomeController, HomeStates>(
                    selector: (_, c) => c.getRecipeByMealState,
                    builder: (context, state, _) => switch (state) {
                      GetRecipesByMealTypeLoading() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      GetRecipesByMealTypeError(:final message) => Center(
                        child: Text(message),
                      ),
                      GetRecipesByMealTypeSucess(:final recipes)
                          when recipes.isEmpty =>
                        const Center(child: Text("No recipes")),
                      GetRecipesByMealTypeSucess(:final recipes) =>
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              recipes.length, 
                          itemBuilder: (context, index) =>
                              SearchRecipeContainer(recipe: recipes[index]),
                        ),
                      _ =>
                        const SizedBox.shrink(),
                    },
                  ),
                ),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: "Popular Recipes", onTap: () {}),
                SizedBox(height: AppHeight.s12),
                SizedBox(
                  height: AppHeight.s140,
                  child: Selector<HomeController, HomeStates>(
                    selector: (_, c) => c.searcState,
                    builder: (_, state, __) => switch (state) {
                      SearchRecipeLoading() => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      SearchRecipeError(:final message) => Center(
                        child: Text(message),
                      ),
                      SearchRecipeSuccess(:final recipes) =>
                        recipes.isEmpty
                            ? const Center(child: Text("No results found"))
                            : ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: recipes.length,
                                itemBuilder: (context, index) =>
                                    SearchRecipeContainer(
                                      recipe: recipes[index],
                                    ),
                              ),
                      _ => Selector<HomeController, HomeStates>(
                        selector: (_, c) => c.state,
                        builder: (_, state, __) => switch (state) {
                          HomeLoading() => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          HomeError(:final message) => Center(
                            child: Text(message),
                          ),
                          HomeSuccess(:final recipes) => ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: recipes.length,
                            itemBuilder: (context, index) =>
                                SearchRecipeContainer(recipe: recipes[index]),
                          ),
                          _ => const SizedBox.shrink(),
                        },
                      ),
                    },
                  ),
                ),
                SizedBox(height: AppHeight.s24),
                HeaderRow(header: "Editor's Choice", onTap: () {}),
                SizedBox(height: AppHeight.s12),
                Selector<HomeController, HomeStates>(
                  builder: (_, state, __) => switch (state) {
                    HomeLoading() => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    HomeError(:final message) => Center(child: Text(message)),
                    HomeSuccess(:final recipes) => ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      clipBehavior: Clip.none,
                      padding: EdgeInsets.only(top: AppHeight.s8),
                      itemCount: recipes.length,
                      itemBuilder: (context, index) =>
                          EditorChoiceContainer(recipe: recipes[index]),
                    ),
                    _ => const SizedBox.shrink(),
                  },
                  selector: (_, c) => c.state,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
