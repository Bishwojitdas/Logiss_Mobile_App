import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class EnableBackImagePreview extends StatefulWidget {
  XFile file;
   EnableBackImagePreview({Key? key, required this.file}) : super(key: key);

  @override
  State<EnableBackImagePreview> createState() => _EnableBackImagePreviewState();
}

class _EnableBackImagePreviewState extends State<EnableBackImagePreview> {
  @override
  Widget build(BuildContext context) {
    File picture=File(widget.file.path);
    return Scaffold(

    );
  }
}
