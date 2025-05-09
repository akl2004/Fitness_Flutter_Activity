import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;
  Color boxColor;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
    required this.boxColor,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconPath: 'assets/icons/pancake.png',
        level: 'Medium',
        duration: '30mins',
        calorie: '380kCal',
        viewIsSelected: true,
        boxColor: Color(0xff92A3FD),
      ),
    );

    diets.add(
      DietModel(
        name: 'Croissant',
        iconPath: 'assets/icons/croissant.png',
        level: 'Easy',
        duration: '10mins',
        calorie: '180kCal',
        viewIsSelected: true,
        boxColor: Color(0xffC58BF2),
      ),
    );

    diets.add(
      DietModel(
        name: 'Donut',
        iconPath: 'assets/icons/donut.png',
        level: 'Medium',
        duration: '10mins',
        calorie: '280kCal',
        viewIsSelected: true,
        boxColor: Color(0xff92A3FD),
      ),
    );
    return diets;
  }
}
