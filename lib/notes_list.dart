import 'package:flutter/material.dart';
import 'package:note_pad_flutter/models/notes_model.dart';

class NotesList extends ValueNotifier<List<Notes>> {
  // TODO: Store values here from a local storage
  NotesList._sharedInstance()
      : super(
          [
            Notes(
              title: 'My Personal Journal',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta non est sed volutpat. Quisque ac leo pellentesque, euismod sem et, pharetra magna. Sed magna magna, imperdiet vel posuere semper, tempor vitae elit. Morbi tortor lacus, molestie sit amet consequat in, sodales eu erat.',
            )
          ],
        );

  static final NotesList _shared = NotesList._sharedInstance();

  factory NotesList() => _shared;

  int get listLength => value.length;

  void addNotes({required Notes note}) {
    final notesList = value;
    notesList.add(note);
    notifyListeners();
  }

  void removeNote({required Notes note}) {
    final notesList = value;
    if (notesList.contains(note)) {
      notesList.remove(note);
      notifyListeners();
    }
  }

  Notes? getNote({required int index}) =>
      value.length > index ? value[index] : null;
}
