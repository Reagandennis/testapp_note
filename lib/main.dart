// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'add_item_form.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
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
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final List<Map<String, String>> _items = [
    {
      'title': 'Rainforest Ecosystems',
      'description': 'Discover the rich biodiversity found in rainforests, from towering trees to unique wildlife species.',
    },
    {
      'title': 'Space Exploration',
      'description': 'Learn about humanity’s journey to explore the cosmos, from the first moon landing to Mars missions.',
    },
    {
      'title': 'Ancient Civilizations',
      'description': 'Explore the mysteries and achievements of ancient civilizations like the Egyptians, Greeks, and Mayans.',
    },
    {
      'title': 'Renewable Energy',
      'description': 'Understand the importance of renewable energy sources like solar, wind, and hydro power in combating climate change.',
    },
  ];

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  void _navigateToAddItem(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => AddItemForm(onSubmit: _addItem)),
    );
  }

  void _addItem(String title, String description) {
    setState(() {
      _items.add({'title': title, 'description': description});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(_items[index]['title']!),
              subtitle: Text(_items[index]['description']!),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deleteItem(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _navigateToAddItem(context),
        label: Text('New'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
