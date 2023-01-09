class Movie {
  String? id;
  String? title;
  String? image;
  String? description;
  int? year;
  double? rating;
  String? createdAt;
  String? updatedAt;

  Movie(
      {this.id,
      this.title,
      this.image,
      this.description,
      this.year,
      this.rating,
      this.createdAt,
      this.updatedAt,
});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    title = json['title'];
    image = json['image'];
    description = json['description'];
    year = json['year'];
    rating = json['rating'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['description'] = this.description;
    data['year'] = this.year;
    data['rating'] = this.rating;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}