import 'package:flutter/material.dart';
import 'package:note_pad_flutter/notes_list.dart';

import '../models/notes_model.dart';

class SingleNote extends StatelessWidget {
  const SingleNote({super.key, required this.note});
  final Notes note;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        NotesList notesList = NotesList();
        notesList.removeNote(note: note);
      },
      key: ValueKey(note.id),
      child: Card(
        child: ListTile(
          contentPadding: const EdgeInsets.all(20),
          title: Text(note.title),
          subtitle: Text(note.description),
        ),
      ),
    );
  }
}
