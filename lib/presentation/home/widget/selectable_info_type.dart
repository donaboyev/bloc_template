import 'package:flutter/material.dart';

class SelectableInfoType extends StatelessWidget {
  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  const SelectableInfoType({
    super.key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: isSelected ? Colors.black : Colors.white),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(title),
      ),
    );
  }
}
