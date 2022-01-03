class Book {
  final int id;
  final String title;
  final int cost;
  final String currency;
  final String image;
  final String description;
  Book({
    required this.id,
    required this.title,
    required this.cost,
    required this.currency,
    required this.image,
    required this.description,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      cost: json['cost'],
      currency: json['currency'],
      image: json['image'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['cost'] = cost;
    _data['currency'] = currency;
    _data['image'] = image;
    _data['description'] = description;
    return _data;
  }
}
