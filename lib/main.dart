import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(EnglishWords());

class EnglishWords extends StatelessWidget {

  List<Widget> listWords() {
    final words = nouns.take(10);
    List<Widget> listTile = List<Widget>();

    words.forEach((text) {
      final size = syllables('$text');
      listTile.add(
        ListTile(
          title: Text('$text'),
          trailing: Text('$size'),
        ),
      );
    });
    return listTile;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade100,
        body: SafeArea(
          child: ListView(
            children: listWords(),
          ),
        ),
      ),
    );
  }
}