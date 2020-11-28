import 'package:flutter/material.dart';
import 'package:mynote/ui/views/note/note_model.dart';
import 'package:mynote/ui/views/note/note_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NoteViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: SingleChildScrollView(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: model.items.length,
            itemBuilder: (context, int index) {
              Note item = model.items[index];
              return ListTile(
                title: Text(item.title),
                subtitle: Text(item.desc),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
      viewModelBuilder: () => NoteViewModel(),
    );
  }
}
