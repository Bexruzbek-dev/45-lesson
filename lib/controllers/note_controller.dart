import 'package:uzgaruvchi/models/note.dart';
import 'package:uzgaruvchi/utils/extensions/extension.dart';

class NoteController {
  final List<Note> _list = [
    Note(
        title: "Salom",
        text: "17:00 dushanba shanba",
        iscomplited: false,
        date: "2024-04-30 20:45"),
    Note(
        title: "Nima",
        text: "17:00 dushanba shanba",
        iscomplited: true,
        date: "2024-04-30 20:45"),
    Note(
        title: "Dars qilish",
        text: "17:00 dushanba shanba",
        iscomplited: false,
        date: "2024-04-30 20:45"),
    Note(
        title: "Suzish",
        text: "17:00 dushanba shanba",
        iscomplited: true,
        date: "2024-04-30 20:45"),
    Note(
        title: "Kitob o'qish",
        text: "17:00 dushanba shanba",
        iscomplited: false,
        date: "2024-04-30 20:45"),
    Note(
        title: "Kimdir",
        text: "17:00 dushanba shanba",
        iscomplited: true,
        date: "2024-04-30 20:45"),
  ];

  List<Note> get list {
    return [..._list];
  }

  void add(String title, String text) {
    _list.add(
      Note(
        title: title,
        text: text,
        iscomplited: false,
        date: DateTime.now().dateTimeFormat(),
      ),
    );
  }

  void edit({
    required int index,
    required String title,
    required String text,
  }) {
    _list[index].text = text;
    _list[index].title = title;
  }

  void delete(int index) {
    _list.removeAt(index);
  }
}
