import 'package:flutter/material.dart';
import 'package:task3/features/home/presentation/widgets/category_filter_chips.dart';

import '../../../../core/resources/spacing_values_manager.dart';

class CategoriesFilterRow extends StatefulWidget {
  const CategoriesFilterRow({super.key, required this.filters, this.onSelected});
  final List <String> filters;
  final void Function (String mealType)? onSelected;


  @override
  State<CategoriesFilterRow> createState() => _CategoriesFilterRowState();
}

class _CategoriesFilterRowState extends State<CategoriesFilterRow> {
   int selectedIndex = 0 ; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeight.s42,
      child: ListView.builder(
        itemCount: widget.filters.length,
        shrinkWrap: true,
        scrollDirection: .horizontal,
        itemBuilder: ((_, index) {
          return CategoryFilterChips(
            onTap: () => setState(() {
              selectedIndex = index;
              widget.onSelected?.call(widget.filters[index]);
            }),
            label: widget.filters[index],
            isSelected: index==selectedIndex,
            );
        }),
      ),
    );
  }
}
