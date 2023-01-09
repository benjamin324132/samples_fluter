import 'package:awesome_ui/screens/LinkTree/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, required this.user}) : super(key: key);
  final User user;
  @override
  // ignore: no_logic_in_create_state
  State<ProfileScreen> createState() => _ProfileScreenState(user);
}

class _ProfileScreenState extends State<ProfileScreen> {
  _ProfileScreenState(this.user);
  User user;

  Color _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  IconData getIcon(String type) {
    switch (type.toLowerCase()) {
      case "facebook":
        return Boxicons.bxl_facebook;
      case "instagram":
        return Boxicons.bxl_instagram;
      case "twitter":
        return Boxicons.bxl_twitter;
      case "linkedin":
        return Boxicons.bxl_linkedin;
      case "dribbble":
        return Boxicons.bxl_dribbble;
      case "github":
        return Boxicons.bxl_github;
      case "twitch":
        return Boxicons.bxl_twitch;
      case "youtube":
        return Boxicons.bxl_youtube;
      case "snapchat":
        return Boxicons.bxl_snapchat;
      case "whatsapp":
        return Boxicons.bxl_whatsapp;
      default:
        return Boxicons.bx_x;
    }
  }

  IconButton getSocialButton(SociaLinks socialLink) {
    return IconButton(
        icon: Icon(
          getIcon("${socialLink.name}"),
          color: _getColorFromHex("${user.colors?.socialLinks}"),
        ),
        onPressed: () async {
          await launchUrl(Uri.parse("${socialLink.url}"));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _getColorFromHex("${user.colors?.background}"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        "${user.avatar}",
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "${user.name}",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: _getColorFromHex("${user.colors?.infoText}")),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${user.position}",
                  style: TextStyle(
                      color: _getColorFromHex("${user.colors?.infoText}")),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(user.sociaLinks!.length,
                      (index) => getSocialButton(user.sociaLinks![index])),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                      user.customLinks!.length,
                      (index) => GestureDetector(
                            onTap: () async {
                              await launchUrl(
                                  Uri.parse("${user.customLinks![index].url}"));
                            },
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              width: double.infinity,
                              height: 50,
                              decoration: BoxDecoration(
                                color: _getColorFromHex(
                                    "${user.colors?.customLinksBg}"),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Text(
                                "${user.customLinks![index].title}",
                                maxLines: 1,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        user.customLinks![index].title!.length >
                                                15
                                            ? 14
                                            : 18,
                                    color: _getColorFromHex(
                                        "${user.colors?.customLinksTxt}")),
                              )),
                            ),
                          )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
