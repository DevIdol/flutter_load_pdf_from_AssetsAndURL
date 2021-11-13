import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ViewPDF extends StatefulWidget {
  const ViewPDF({Key? key}) : super(key: key);

  @override
  _ViewPDFState createState() => _ViewPDFState();
}

class _ViewPDFState extends State<ViewPDF> {
  final String _pdfAssets = "assets/flutter.pdf";
  //final String _pdfURL = "https://www.tutorialspoint.com/flutter/flutter_tutorial.pdf";
  bool _loading = true;
  late PDFDocument _document;

  @override
  void initState() {
    super.initState();
    _loadPDF();
  }

  _loadPDF() async {
    final _doc = await PDFDocument.fromAsset(_pdfAssets);
    //  final _doc = await PDFDocument.fromURL(_pdfURL);
    setState(() {
      _document = _doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF"),
      ),
      body: _loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _document,
              scrollDirection: Axis.vertical,
            ),
    );
  }
}
