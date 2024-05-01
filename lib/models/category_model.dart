class CategoryModel {
  String name;
  String iconPath;

  CategoryModel({required this.name, required this.iconPath});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
        CategoryModel(name: 'Flights', iconPath: 'assets/icons/Plane.png'));

    categories
        .add(CategoryModel(name: 'Trains', iconPath: 'assets/icons/Train.png'));

    categories
        .add(CategoryModel(name: 'Bus', iconPath: 'assets/icons/Bus.png'));

    categories
        .add(CategoryModel(name: 'Car', iconPath: 'assets/icons/Car.png'));

    categories
        .add(CategoryModel(name: 'Motor', iconPath: 'assets/icons/Motor.png'));

    return categories;
  }
}
