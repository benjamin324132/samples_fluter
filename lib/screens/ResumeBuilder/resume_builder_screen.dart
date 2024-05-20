import 'dart:math';

import 'package:awesome_ui/screens/ResumeBuilder/components/text_field.dart';
import 'package:awesome_ui/screens/ResumeBuilder/model/resume.dart';
import 'package:awesome_ui/screens/ResumeBuilder/resume_preview.dart';
import 'package:flutter/material.dart';

class ResumeBuilderScreen extends StatefulWidget {
  const ResumeBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ResumeBuilderScreen> createState() => _ResumeBuilderScreenState();
}

class _ResumeBuilderScreenState extends State<ResumeBuilderScreen> {
  Resume resume = Resume(works: [], education: [], skills: []);
  TextEditingController name = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController bio = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController location = TextEditingController();

  //WORK
  TextEditingController workEnterpraise = TextEditingController();
  TextEditingController workTitle = TextEditingController();
  TextEditingController workDescription = TextEditingController();

  //Education
  TextEditingController eduSchool = TextEditingController();
  TextEditingController edutitle = TextEditingController();
  TextEditingController eduDescription = TextEditingController();

  //Skills
  TextEditingController skilltitle = TextEditingController();

  void previewResume() {
    resume.name = name.text;
    resume.title = title.text;
    resume.bio = bio.text;
    resume.phone = phone.text;
    resume.email = email.text;
    resume.location = location.text;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ResumePrevie(resume: resume),
      ),
    );
  }

  void addWorkExperience() {
    Works work = Works(
        title: workTitle.text,
        enterpraise: workEnterpraise.text,
        description: workDescription.text);

    setState(() {
      resume.works.add(work);
      workTitle.text = "";
      workEnterpraise.text = "";
      workDescription.text = "";
    });
  }

  void addEducation() {
    Education education = Education(
        title: edutitle.text,
        school: eduSchool.text,
        description: eduDescription.text);

    setState(() {
      resume.education.add(education);
      edutitle.text = "";
      eduSchool.text = "";
      eduDescription.text = "";
    });
  }

  void addSkill() {
    Skills skill = Skills(
      title: skilltitle.text,
    );

    setState(() {
      resume.skills.add(skill);
      skilltitle.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldComponent(
                text: name,
                placeholder: "Name",
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldComponent(
                text: title,
                placeholder: "Title",
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldComponent(
                text: bio,
                placeholder: "Bio",
                maxLines: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldComponent(
                text: phone,
                placeholder: "Phone",
                type: TextInputType.phone,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldComponent(
                text: email,
                placeholder: "Email",
                type: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldComponent(
                text: location,
                placeholder: "Location",
                type: TextInputType.streetAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              ExpansionTile(
                title: const Text(
                  "Work Experience",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextFieldComponent(
                        text: workTitle,
                        placeholder: "Work title",
                        type: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldComponent(
                        text: workEnterpraise,
                        placeholder: "Work enterpraise",
                        type: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldComponent(
                        text: workDescription,
                        placeholder: "Work Desc",
                        type: TextInputType.text,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7B61FF),
                          minimumSize: const Size(double.infinity, 45),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        onPressed: addWorkExperience,
                        child: const Text("Add"),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ExpansionTile(
                title: const Text(
                  "Education",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextFieldComponent(
                        text: eduSchool,
                        placeholder: "School",
                        type: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldComponent(
                        text: edutitle,
                        placeholder: "Title",
                        type: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldComponent(
                        text: eduDescription,
                        placeholder: "Description",
                        type: TextInputType.text,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7B61FF),
                          minimumSize: const Size(double.infinity, 45),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        onPressed: addEducation,
                        child: const Text("Add"),
                      ),
                    ],
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "Skills",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextFieldComponent(
                        text: skilltitle,
                        placeholder: "Skill",
                        type: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7B61FF),
                          minimumSize: const Size(double.infinity, 45),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        onPressed: addSkill,
                        child: const Text("Add"),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7B61FF),
                  minimumSize: const Size(double.infinity, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: previewResume,
                child: const Text("Preview"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
