import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:notes_app/urls.dart';

class CreateNote extends StatefulWidget {
  final Client client;
  const CreateNote({super.key, required this.client});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Note'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Content',
                ),
                maxLines: 10,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  widget.client
                      .post(createUrl, body: {"body": controller.text});
                  Navigator.pop(context);
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
