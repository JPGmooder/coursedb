import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip(
      {Key? key,
      required this.color,
      required this.label,
      required this.isSelected,
      this.onSelected})
      : super(key: key);
  final String label;
  final Color color;
  final bool isSelected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return RawChip(
      selected: isSelected,
      onSelected: onSelected,
      labelPadding: EdgeInsets.symmetric(horizontal: 3),
      visualDensity: VisualDensity(horizontal: 0.0, vertical: -4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      selectedColor: color,
      backgroundColor: isSelected ? color : Colors.black12,
    );
  }
}
