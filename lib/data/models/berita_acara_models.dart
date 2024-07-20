class Beritaacara{
  int id;
  String name;
  String image;
  bool notifed;

  Beritaacara({
    required this.id,
    required this.name,
    required this.image,
    this.notifed = false,
  });
}