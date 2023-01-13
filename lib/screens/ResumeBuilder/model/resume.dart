class Resume {
  String? name;
  String? title;
  String? bio;
  String? phone;
  String? email;
  String? location;
  List<Works> works;
  List<Education> education;
  List<Skills> skills;

  Resume(
      {this.name,
      this.title,
      this.bio,
      this.phone,
      this.email,
      this.location,
      required this.works,
      required this.education,
      required this.skills
      });
}

class Works {
  String? enterpraise;
  String? title;
  String? description;

  Works({this.enterpraise, this.title, this.description});
}

class Education {
  String? school;
  String? title;
  String? description;

  Education({this.school, this.title, this.description});
}

class Skills {
  String? title;

  Skills({this.title});
}

/*
{
    "name": "",
    "title": "",
    "bio": "",
    "phone": "",
    "email": "",
    "location": "",
    "works": [
        {
            "enterpraise": "",
            "title": "",
            "description": ""
        }
    ],
    "education": [
        {
            "school": "",
            "title": "",
            "description": ""
        }
    ]
}
*/