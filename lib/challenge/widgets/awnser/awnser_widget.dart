import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  const AwnserWidget({
    Key? key,
    required this.title,
    this.isRight = false,
    this.isSelected = false
  }): super(key: key);

  Color get _selectedColorRight => isSelected
      ? isRight
          ? AppColors.darkGreen
          : AppColors.darkRed
      : AppColors.white;

  Color get _selectedBorderRight => isSelected
    ? isRight 
      ? AppColors.lightGreen 
      : AppColors.lightRed 
    : AppColors.border;

  Color get _selectedColorCardRight => isSelected
    ? isRight 
      ? AppColors.lightGreen 
      : AppColors.lightRed 
    : AppColors.white;

  Color get _selectedBorderCardRight => isSelected
    ? isRight 
      ? AppColors.green 
      : AppColors.red 
    : AppColors.border;

  TextStyle get _selectedTextStyleRight =>  isSelected
    ? isRight 
      ? AppTextStyles.bodyDarkGreen 
      : AppTextStyles.bodyDarkRed 
    : AppTextStyles.body;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _selectedColorCardRight,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color:_selectedBorderCardRight
            )
          )
        ),
        child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(child: Text(title, style: _selectedTextStyleRight)),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: _selectedColorRight,
              borderRadius: BorderRadius.circular(500),
              border: Border.fromBorderSide(
                BorderSide(color: _selectedBorderRight)
              )
            ),
            child: isSelected ? Icon(_selectedIconRight, size: 16) : null,
          )
        ]),
      ),
    );
  }
}
