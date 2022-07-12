import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';

class PosterScreen extends StatefulWidget {
  const PosterScreen({Key? key}) : super(key: key);

  @override
  _PosterScreenState createState() => _PosterScreenState();
}

class _PosterScreenState extends State<PosterScreen> {
  TextEditingController _textController = TextEditingController();
  String text = "Sound of Music";
  String img =
      "https://images.unsplash.com/photo-1616518015080-0b67441d465a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
  double textSize = 120;
  double letterSacing = 0.5;
  int slectedAlignment = 0;
  int slectedImgFit = 0;
  int slectedTextAlign = 0;
  int slectedTextFontWeight = 0;
  int slectedTextFontFamily = 0;
  int rotateText = 0;
  double textOpacity = 1;
  double imgOpacity = 0;
  List alignemnts = [
    Alignment.center,
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  List alignemntsLabels = [
    "Center",
    "Top Center",
    "Top Left",
    "Top Right",
    "Bottom Center",
    "Bottom Left",
    "Bottom Right",
  ];
  List textAlignments = [
    TextAlign.center,
    TextAlign.left,
    TextAlign.right,
    TextAlign.justify,
    TextAlign.end,
    TextAlign.start,
  ];
  List textAlignmentsLabels = [
    "Center",
    "Left",
    "Right",
    "Justify",
    "End",
    "Start",
  ];
  List textFontWeights = [
    FontWeight.bold,
    FontWeight.normal,
    FontWeight.w100,
    FontWeight.w300,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900,
  ];
  List textFontWeightsLabels = [
    "Bold",
    "Normal",
    "100",
    "300",
    "500",
    "600",
    "700",
    "800",
    "900",
  ];
  List textFontFamilies = [
    GoogleFonts.roboto(),
    GoogleFonts.openSans(),
    GoogleFonts.lato(),
    GoogleFonts.montserrat(),
    GoogleFonts.robotoCondensed(),
    GoogleFonts.poppins(),
    GoogleFonts.oswald(),
    GoogleFonts.notoSans(),
    GoogleFonts.raleway(),
    GoogleFonts.nunito(),
    GoogleFonts.openSansCondensed(),
    GoogleFonts.barlow(),
    GoogleFonts.heebo(),
    GoogleFonts.anton(),
    GoogleFonts.shrikhand(),
    GoogleFonts.bebasNeue(),
  ];
  List textFontFamiliesLabels = [
    "Roboto",
    "Open Sans",
    "Lato",
    "Montserrat",
    "Roboto Condensed",
    "Poppins",
    "Oswald",
    "Noto Sans",
    "Raleway",
    "Nunito",
    "Open Sans Cond.",
    "Barlow",
    "Heebo",
    "Anton",
    "Shrikhand",
    "Babas Neue",
  ];

  // Image Styles
  List imgFits = [
    BoxFit.cover,
    BoxFit.contain,
    BoxFit.fill,
    BoxFit.fitHeight,
    BoxFit.fitWidth,
    BoxFit.none,
  ];
  List imgFitsLabels = [
    "Cover",
    "Contain",
    "Fill",
    "Fit Height",
    "Fit Width",
    "None",
  ];

  // create some values
  Color pickerColor = Color(0xfffffb08);
  Color textColor = Color(0xfffffb08);
  Color imgColor = Color(0xffffffff);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

// raise the [showDialog] widget
  void showelDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: changeColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(() => textColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // raise the [showDialog] widget
  void showelDialogImg() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: changeColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(() => imgColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                "Text",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Text"),
                controller: _textController,
                onChanged: (inputText) {
                  setState(() {
                    text = inputText;
                  });
                },
              ),
              Text("Text Size"),
              Slider(
                label: "Text Size",
                min: 10.0,
                max: 250.0,
                value: textSize,
                onChanged: (value) {
                  setState(() {
                    textSize = value;
                  });
                },
              ),
              Text("Letter Spacing"),
              Slider(
                label: "Letter Spacing",
                min: 0.0,
                max: 40.0,
                value: letterSacing,
                onChanged: (value) {
                  setState(() {
                    letterSacing = value;
                  });
                },
              ),
              Text("Text Rotate"),
              Slider(
                label: "Text Rotate",
                min: 0.0,
                max: 4.0,
                divisions: 5,
                value: rotateText.toDouble(),
                onChanged: (value) {
                  setState(() {
                    rotateText = value.toInt();
                  });
                },
              ),
              Text("Text Opacity"),
              Slider(
                label: "Text Opacity",
                min: 0.0,
                max: 1.0,
                value: textOpacity,
                onChanged: (value) {
                  setState(() {
                    textOpacity = value;
                  });
                },
              ),
              //Font Family
              DropdownButton<int>(
                style: TextStyle(
                  color: Colors.black,
                ),
                hint: Text(textFontFamiliesLabels[slectedTextFontFamily]),
                items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      textFontFamiliesLabels[value],
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    slectedTextFontFamily = value!;
                  });
                },
              ),

              DropdownButton<int>(
                style: TextStyle(
                  color: Colors.black,
                ),
                hint: Text(textFontWeightsLabels[slectedTextFontWeight]),
                items: <int>[0, 1, 2, 3, 4, 5, 6, 7, 8].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      textFontWeightsLabels[value],
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    slectedTextFontWeight = value!;
                  });
                },
              ),
              DropdownButton<int>(
                style: TextStyle(
                  color: Colors.black,
                ),
                hint: Text(alignemntsLabels[slectedAlignment]),
                items: <int>[0, 1, 2, 3, 4, 5, 6].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      alignemntsLabels[value],
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    slectedAlignment = value!;
                  });
                },
              ),
              DropdownButton<int>(
                style: TextStyle(
                  color: Colors.black,
                ),
                hint: Text(textAlignmentsLabels[slectedTextAlign]),
                items: <int>[0, 1, 2, 3, 4, 5].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      textAlignmentsLabels[value],
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    slectedTextAlign = value!;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    showelDialog();
                  },
                  child: Text("Text Color")),
              Divider(),
              Text(
                "Image",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Image Url"),
                onChanged: (inputText) {
                  setState(() {
                    img = inputText;
                  });
                },
              ),
              DropdownButton<int>(
                style: TextStyle(
                  color: Colors.black,
                ),
                hint: Text(imgFitsLabels[slectedImgFit]),
                items: <int>[0, 1, 2, 3, 4, 5].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      imgFitsLabels[value],
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    slectedImgFit = value!;
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    showelDialogImg();
                  },
                  child: Text("Image Color")),
              Text("Image Opacity"),
              Slider(
                label: "Image Opacity",
                min: 0.0,
                max: 1.0,
                value: imgOpacity,
                onChanged: (value) {
                  setState(() {
                    imgOpacity = value;
                  });
                },
              ),
            ],
          ),
        ),
      )),
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(imgColor.withOpacity(imgOpacity), BlendMode.color),
            child: Image.network(
              img,
              fit: imgFits[slectedImgFit],
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Align(
              alignment: alignemnts[slectedAlignment],
              child: RotatedBox(
                quarterTurns: rotateText,
                child: Text(
                  text,
                  textAlign: textAlignments[slectedTextAlign],
                  style: textFontFamilies[slectedTextFontFamily].copyWith(
                      color: textColor.withOpacity(textOpacity),
                      letterSpacing: letterSacing,
                      fontSize: textSize,
                      fontWeight: textFontWeights[slectedTextFontWeight]),
                ),
              ))
        ],
      ),
    );
  }
}
