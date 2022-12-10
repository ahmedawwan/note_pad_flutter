import 'package:flutter/material.dart';
import 'package:note_pad_flutter/add_note_screen.dart';
import 'package:note_pad_flutter/notes_list.dart';
import 'package:note_pad_flutter/widgets/single_note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Notes',
          style: TextStyle(
            //color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: NotesList(),
        builder: (c, value, child) {
          final notes = value;
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            shrinkWrap: true,
            itemCount: notes.length,
            itemBuilder: (context, index) => SingleNote(
              note: notes[index],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNoteScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
