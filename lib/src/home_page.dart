import 'package:flutter/material.dart';
import 'package:home_page___todo_list/src/edit_appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: EditAppbarWidget(
          saveAction: () {},
          closeAction: () {},
          title: 'List Todo\'s',
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('item $index'));
        },
      ),
    );
  }
}
