class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected,
  });

  static List<PopularDietsModel> getPopularDiets() {
    List<PopularDietsModel> popularDiets = [];

    popularDiets.add(
      PopularDietsModel(
        name: 'Blueberry Pancake',
        iconPath: 'assets/icons/blue-pancake.png',
        level: 'Medium',
        duration: '30mins',
        calorie: '260kCal',
        boxIsSelected: true,
      ),
    );

    popularDiets.add(
      PopularDietsModel(
        name: 'Coffee Latte',
        iconPath: 'assets/icons/coffe.png',
        level: 'Medium',
        duration: '30mins',
        calorie: '130kCal',
        boxIsSelected: true,
      ),
    );

    popularDiets.add(
      PopularDietsModel(
        name: 'Salad',
        iconPath: 'assets/icons/salad.png',
        level: 'Easy',
        duration: '20mins',
        calorie: '100kCal',
        boxIsSelected: true,
      ),
    );
    return popularDiets;
  }
}
