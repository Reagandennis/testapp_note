// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({super.key});

  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<Item> items = [];

  void _addItem(String title, String description) {
    setState(() {
      items.add(Item(title: title, description: description));
    });
  }

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void _showAddItemDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AddItemDialog(onAddItem: _addItem);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _showAddItemDialog,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            subtitle: Text(items[index].description),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () => _deleteItem(index),
            ),
          );
        },
      ),
    );
  }
}

class AddItemDialog extends StatefulWidget {
  final Function(String, String) onAddItem;

  AddItemDialog({super.key, required this.onAddItem});

  @override
  _AddItemDialogState createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Item'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Item Title'),
          ),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text('Add Item'),
          onPressed: () {
            widget.onAddItem(
              _titleController.text,
              _descriptionController.text,
            );
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
