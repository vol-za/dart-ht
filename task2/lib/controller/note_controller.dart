import '../model/note_model.dart';

class NoteController {
  final NotesModel model;

  NoteController(this.model);

  List<Note> get notes => model.notes;

  void addNote(String title) {
    model.addNote(title);
  }

  void printList() => model.notes.forEach(print);
}
