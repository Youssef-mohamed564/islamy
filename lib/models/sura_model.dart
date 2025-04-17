class SuraModel {
  String enName;
  String arName;
  int versesCount;
  int? suraCount;

  SuraModel({
    required this.arName,
    required this.enName,
    required this.versesCount,
    this.suraCount
  });
}
