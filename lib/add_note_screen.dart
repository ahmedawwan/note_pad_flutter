import 'package:flutter/material.dart';
import 'package:note_pad_flutter/notes_list.dart';

import 'models/notes_model.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  late final TextEditingController titleController;
  late final TextEditingController descriptionController;

  @override
  void initState() {
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              cursorColor: Theme.of(context).primaryColor,
              controller: titleController,
              style: const TextStyle(fontSize: 24),
              decoration: const InputDecoration(
                hintText: 'Title...',
                hintStyle: TextStyle(fontSize: 24),
                border: InputBorder.none,
              ),
            ),
            TextField(
              cursorColor: Theme.of(context).primaryColor,
              controller: descriptionController,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: 'Description...',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          String title = titleController.text;
          String description = descriptionController.text;

          if (title.isNotEmpty && description.isNotEmpty) {
            NotesList notesList = NotesList();
            notesList.addNotes(
                note: Notes(
              title: title,
              description: description,
            ));
            Navigator.pop(context);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
