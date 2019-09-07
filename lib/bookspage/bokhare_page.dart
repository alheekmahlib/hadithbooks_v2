import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:epub/epub.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:typed_data';

import 'package:webview_flutter/webview_flutter.dart';



class BokharePage extends StatefulWidget{
  @override
  _BokharePageState createState() => new _BokharePageState();
}

class _BokharePageState extends State<BokharePage>{
  Completer<WebViewController> _controller = Completer<WebViewController>();
  String chapters = '';
  String chapterTitle = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Text(chapterTitle),
          ),
        ],
      ),




      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  void _incrementCounter() async {

    //Get the epub into memory somehow
    // String fileName = "./assets/test.txt";
    String fileName = "asset/27112.epub";
    ByteData bytes = await rootBundle.load(fileName);
    print(bytes);
    final buffer = bytes.buffer;
    List<int> listInt =
    buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    EpubBook epubBook = await EpubReader.readBook(listInt);
    print(epubBook.Chapters);
    setState(() {
      chapterTitle = epubBook.Chapters as String;

//      chapters = epubBook.Chapters as String;
//      epubBook.Chapters.forEach((EpubChapter chapter) {
//        // Title of chapter
//
//
//        // HTML content of current chapter
//        String chapterHtmlContent = chapter.HtmlContent;
//
//        // Nested chapters
//        List<EpubChapter> subChapters = chapter.SubChapters;
//      });
    });

  }

}
