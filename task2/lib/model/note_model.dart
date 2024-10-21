class Note {
  String title;
  bool isCompleted;

  Note(this.title, this.isCompleted);

  @override
  String toString() {
    return this.title + ": " + this.isCompleted.toString();
  }
}

class NotesModel {
  List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(String title) {
    _notes.add(Note(title, false));
  }
}
