import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main() {
  runApp(const Camera());
}

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skin cancer test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable to store the selected image file
  XFile? _imageFile;

  // Method to open the gallery and select an image
  Future<void> _openGallery() async {
    var pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  // Method to open the camera and capture an image
  Future<void> _openCamera() async {
    var pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _openGallery,
              child: const Text('Open Gallery'),
            ),
            ElevatedButton(
              onPressed: _openCamera,
              child: const Text('Open Camera'),
            ),
            const SizedBox(height: 16),
            if (_imageFile != null)
              Image.file(File(_imageFile!.path)),
          ],
        ),
      ),
    );
  }
}