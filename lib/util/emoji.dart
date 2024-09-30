import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmoIconFace extends StatelessWidget {




  final String  emoji;
  const EmoIconFace({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(emoji, style: const TextStyle(color: Colors.white, fontSize: 28)),


    );
}}
