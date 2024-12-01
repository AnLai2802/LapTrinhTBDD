import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext
  context) {
    return MaterialApp(

      title: 'Bảng Cửu Chương',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bảng Cửu Chương'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _number = 1;
  List<String> _table = [];

  void generateTable() {
    _table.clear();
    for (int i = 1; i <= 10; i++) {
      _table.add('${_number} x $i = ${_number * i}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(

                labelText: 'Nhập số cần tính bảng cửu chương',
              ),
              onChanged: (value) {
                setState(() {
                  _number = int.tryParse(value) ?? 1;
                  generateTable();
                });
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _table.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_table[index]),

                    tileColor: index.isEven ? Colors.grey[200] : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}