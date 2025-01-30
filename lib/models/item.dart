class Item {
  final int code;
  final String name;
  final String picture;
  int itemCount = 0;

  Item(
      {required this.code,
      required this.name,
      required this.picture,
      itemCount});
}
