class DrawerItem {
  int id;
  String name;
  String icon;
  DrawerItem({
    required this.id,
    required this.name,
    required this.icon,

  });

  DrawerItem copyWith({
    int? id,
    String? name,
    String? icon,
    int? selectedLayoutId,
    int? selectedDeviceId,
    int? selectedFontId,
    int? selectedBackgroundId,

  }) {
    return DrawerItem(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
  
}
