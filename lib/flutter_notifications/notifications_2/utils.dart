import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

//For downloading img from url
//& store in mobile application document directory

class Utils{

  static Future<String> downloadFile(String url, String fileName) async{
    final directory = await getApplicationDocumentsDirectory();
    final String filePath = '${directory.path}/$fileName';

    final http.Response response = await http.get(Uri.parse(url));
    final File file = File(filePath);

    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }

  /*static Future<String> downloadFile(AssetImage img , String fileName) async{
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName';
    //final response = await http.get(Uri.parse(url));
    final file = File(filePath);

    //await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }*/


  Future<Uint8List> _getByteArrayFromUrl(String url) async {
    final http.Response response = await http.get(Uri.parse(url));
    return response.bodyBytes;
  }
}