import 'dart:convert';

import '../controller/note_controller.dart';
import '../model/note_model.dart';
import 'dart:io';

final NoteController _controller = NoteController(NotesModel());

void main() {
  print("Welcome to Notes App!");
  int option = -1;
  do {
    print(
        "Please enter the action number listed below.\n0. Exit\n1. Create a new note;\n2. View all;\n");
    String? line = stdin.readLineSync(encoding: utf8);
    if (line != null && int.tryParse(line) != null) {
      option = int.parse(line);
      switch (option) {
        case (1):
          {
            print("Type a title: ");
            String? title = stdin.readLineSync(encoding: utf8).toString();
            if (!title.isEmpty) {
              _controller.addNote(title);
            } else {
              print("Title cannot be empty.");
            }
          }
        case (2):
          _controller.printList();
      }
    } else {
      print("Invalid value");
    }
  } while (option != 0);
}
