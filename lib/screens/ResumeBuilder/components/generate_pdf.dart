import 'dart:io';
import 'dart:typed_data';
import 'package:awesome_ui/screens/ResumeBuilder/model/resume.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:permission_handler/permission_handler.dart';
//import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

void savePdf(dynamic resume) async {
  final pdf = await buildPdf(resume);
  final status = await Permission.storage.request();
  if (!status.isGranted) {
    if (kDebugMode) {
      print("Permission denied");
    }
    return;
  }
  final output = await getDownloadPath();
  final file = File("$output/${resume.name}.pdf");
  await file.writeAsBytes(await pdf.save());
}

Future<String?> getDownloadPath() async {
  Directory? directory;
  try {
    if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    } else {
      directory = Directory('/storage/emulated/0/Download');
      // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
      // ignore: avoid_slow_async_io
      if (!await directory.exists()) {
        directory = await getExternalStorageDirectory();
      }
    }
  } catch (err) {
    Exception(err);
  }
  return directory?.path;
}

Future<Uint8List> generatePdf(Resume resume) async {
  print("Works ${resume.works.length}");
  print("Education ${resume.education.length}");
  final pdf = await buildPdf(resume);
  return pdf.save();
}

Future<Document> buildPdf(Resume resume) async {
  final pdf = Document();
  pdf.addPage(
    Page(
      pageFormat: PdfPageFormat.a5,
      margin: const EdgeInsets.all(15),
      build: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("${resume.name}",
                          style:  TextStyle(
                            fontSize: 14,
                            fontWeight: pw.FontWeight.bold
                          )),
                      Text("${resume.title}",
                          style: const TextStyle(fontSize: 12)),
                      Text("${resume.bio}",
                          style: const TextStyle(fontSize: 8)),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Divider(thickness: 2, color: PdfColors.grey100),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("${resume.phone}", style: const TextStyle(fontSize: 10)),
              Text("${resume.email}", style: const TextStyle(fontSize: 10)),
              Text("${resume.location}", style: const TextStyle(fontSize: 10)),
            ]),
            Divider(thickness: 2, color: PdfColors.grey100),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    //color: PdfColors.redAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Work Experience',
                            style:  TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                        for (Works i in resume.works)
                          Column(
                            children: [
                              Text("${i.title}"),
                              Text("${i.enterpraise}"),
                              Text("${i.description}",
                                  style: const TextStyle(fontSize: 8)),
                              SizedBox(height: 15)
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    //color: PdfColors.lightBlueAccent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Educacion', style:TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                        for (Education i in resume.education)
                          Column(
                            children: [
                              Text("${i.title}"),
                              Text("${i.school}"),
                              Text("${i.description}",
                                  style: const TextStyle(fontSize: 8)),
                              SizedBox(height: 15)
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        Text('Skills', style: TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
                        Wrap(
                          spacing: 3,
                          runSpacing: 3,
                          children: resume.skills
                              .map((item) => Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: PdfColors.black,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text("${item.title}",
                                        style: const TextStyle(
                                            fontSize: 10,
                                            color: PdfColors.white)),
                                  ))
                              .toList()
                              .cast<Widget>(),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
  return pdf;
}
