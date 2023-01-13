import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import '../../models/invoice.dart';
import 'pdf/pdfexport.dart';

class PdfPreviewPage extends StatelessWidget {
  final Invoice invoice;
  const PdfPreviewPage({Key? key, required this.invoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Preview'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          savePdf(invoice);
        },
        child: const Icon(Icons.save),
      ),
      body: PdfPreview(
        build: (context) => makePdf(invoice),
        //useActions: false,
      ),
    );
  }
}