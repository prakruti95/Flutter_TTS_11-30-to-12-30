import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sharedata/switchex.dart';
import 'package:sharedata/tabbarex.dart';

void main() 
{
  runApp(const MaterialApp(home: TabBarExample()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _imagePath = "assets/abcd.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: const Text("Share Image")),
        body: Center
          (
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                    Image.asset(_imagePath, width: 250, height: 250,),
                    const SizedBox(height: 10,),
                    IconButton(
                      onPressed: () {
                        _sharedata(_imagePath);
                      }, 
                      icon: const Icon(Icons.share)
                    )
                ],
              ),
          ),
      );
  }

  Future<void> _sharedata(String assetPath) async {
    try {
      // 1. Load asset image as byte data
      final byteData = await rootBundle.load(assetPath);

      // 2. Get the temporary directory path
      final tempDir = await getTemporaryDirectory();
      final fileName = assetPath.split('/').last;
      final file = File('${tempDir.path}/$fileName');

      // 3. Write image bytes to a temp file
      await file.writeAsBytes(
        byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
      );

      // 4. Share the image file using share_plus
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path)],
          text: 'Check out this image!',
        ),
      );
    } catch (e) {
      debugPrint('Error sharing image: $e');
    }
  }
}
