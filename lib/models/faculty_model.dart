class Faculty {
  final String name;
  final String image;

  Faculty({required this.name, required this.image});

  factory Faculty.fromJson(Map<String, dynamic> json) {
    return Faculty(
      name: "${json['name']['first']} ${json['name']['last']}",
      image: json['picture']['large'],
    );
  }
}
