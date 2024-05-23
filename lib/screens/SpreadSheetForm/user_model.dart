class UserModel {
  String name;
  String email;

  UserModel(this.name, this.email);

  factory UserModel.fromJson(dynamic json) {
    return UserModel("${json['name']}", "${json['email']}");
  }

  // Method to make GET parameters.
  Map toJson() => {
        'name': name,
        'email': email
      };
}