import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view_pdf.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Load PDF'),
          centerTitle: true,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Get.to(const ViewPDF());
            },
            child: Container(
              color: Colors.red,
              height: 60,
              width: 180,
              child: const Center(
                child: Text(
                  'Load PDF',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ));
  }
}
