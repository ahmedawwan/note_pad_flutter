import 'package:flutter/material.dart';
import 'package:note_pad_flutter/models/notes_model.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key, required this.note});

  final Notes note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(note.description),
          ],
        ),
      ),
    );
  }
}
