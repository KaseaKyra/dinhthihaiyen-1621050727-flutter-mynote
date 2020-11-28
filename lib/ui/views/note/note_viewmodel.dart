import 'package:mynote/ui/views/note/note_model.dart';
import 'package:stacked/stacked.dart';

class NoteViewModel extends BaseViewModel {
  final title = 'Note View Model';
  var _items = <Note>[];

  List<Note> get items => _items;
}
