import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
  const ExercisesTile({super.key, required this.title, required this.subtitle, required this.icon, this.backgroundColor});
  final String title;
  final String subtitle;
  final IconData icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.orangeAccent, // Use default color if null
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: Colors.white, size: 40)),
        title: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        subtitle:  Text(subtitle),
        trailing: Icon(Icons.more_vert,
            color: Colors.grey[600], size: 30), // Icon on the right
      ),
    );
  }
}
