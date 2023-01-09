class User {
  ProfileColors? colors;
  String? id;
  String? name;
  String? username;
  String? position;
  String? avatar;
  List<SociaLinks>? sociaLinks;
  List<CustomLinks>? customLinks;
  String? createdAt;
  String? updatedAt;

  User(
      {this.colors,
      this.id,
      this.name,
      this.username,
      this.position,
      this.avatar,
      this.sociaLinks,
      this.customLinks,
      this.createdAt,
      this.updatedAt,
      });

  User.fromJson(Map<String, dynamic> json) {
    colors =
        json['colors'] != null ? new ProfileColors.fromJson(json['colors']) : null;
    id = json['_id'];
    name = json['name'];
    username = json['username'];
    position = json['position'];
    avatar = json['avatar'];
    if (json['sociaLinks'] != null) {
      sociaLinks = <SociaLinks>[];
      json['sociaLinks'].forEach((v) {
        sociaLinks!.add(new SociaLinks.fromJson(v));
      });
    }
    if (json['customLinks'] != null) {
      customLinks = <CustomLinks>[];
      json['customLinks'].forEach((v) {
        customLinks!.add(new CustomLinks.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

}

class ProfileColors {
  String? background;
  String? infoText;
  String? socialLinks;
  String? customLinksBg;
  String? customLinksTxt;

  ProfileColors(
      {this.background,
      this.infoText,
      this.socialLinks,
      this.customLinksBg,
      this.customLinksTxt});

  ProfileColors.fromJson(Map<String, dynamic> json) {
    background = json['background'];
    infoText = json['infoText'];
    socialLinks = json['socialLinks'];
    customLinksBg = json['customLinksBg'];
    customLinksTxt = json['customLinksTxt'];
  }
}

class SociaLinks {
  String? name;
  String? url;
  String? id;

  SociaLinks({this.name, this.url, this.id});

  SociaLinks.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    id = json['_id'];
  }

}

class CustomLinks {
  String? title;
  String? url;
  String? id;

  CustomLinks({this.title, this.url, this.id});

  CustomLinks.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    id = json['_id'];
  }

}