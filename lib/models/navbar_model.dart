class NavbarModel {
  String name;
  String iconPath;

  NavbarModel({required this.name, required this.iconPath});

  static List<NavbarModel> getNavbars() {
    List<NavbarModel> navbars = [];

    navbars.add(NavbarModel(name: 'Home', iconPath: 'assets/icons/home2.png'));

    navbars.add(
        NavbarModel(name: 'History', iconPath: 'assets/icons/history.png'));

    navbars
        .add(NavbarModel(name: 'Ticket', iconPath: 'assets/icons/ticket.png'));

    navbars.add(
        NavbarModel(name: 'Profile', iconPath: 'assets/icons/profile.png'));

    return navbars;
  }
}
