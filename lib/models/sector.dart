class Sector {
  final String name;
  final String code;

  Sector({required this.name, required this.code});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
    };
  }

  factory Sector.fromJson(Map<String, dynamic> json) {
    return Sector(
      name: json['name'],
      code: json['code'],
    );
  }
}