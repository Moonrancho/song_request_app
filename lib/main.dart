import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Song Request App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SongRequestPage(),
    );
  }
}

class SongRequestPage extends StatefulWidget {
  @override
  _SongRequestPageState createState() => _SongRequestPageState();
}

class _SongRequestPageState extends State<SongRequestPage> {
  final _controller = TextEditingController();

  void _submitRequest() {
    final request = _controller.text;
    if (request.isNotEmpty) {
      // Aquí puedes agregar la lógica para enviar la solicitud a tu servidor
      // Por ejemplo, usando HTTP para enviar la solicitud
      print('Song request submitted: $request');
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request a Song'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter song request',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitRequest,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
