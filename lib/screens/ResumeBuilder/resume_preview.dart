import 'package:awesome_ui/screens/ResumeBuilder/components/generate_pdf.dart';
import 'package:awesome_ui/screens/ResumeBuilder/model/resume.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class ResumePrevie extends StatelessWidget {
  const ResumePrevie({ Key? key, required this.resume }) : super(key: key);
  final Resume resume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7B61FF),
        onPressed: () {
          savePdf(resume);
        },
        child: const Icon(Icons.save),
      ),
      body: PdfPreview(
        build: (context) => generatePdf(resume),
        useActions: false,
      ),
    );
  }
}