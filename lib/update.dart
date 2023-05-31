import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:notes_app/urls.dart';

class UpdateNote extends StatefulWidget {
  final Client client;
  final int id;
  final String note;
  const UpdateNote({
    super.key,
    required this.client,
    required this.id,
    required this.note,
  });

  @override
  State<UpdateNote> createState() => _UpdateNoteState();
}

class _UpdateNoteState extends State<UpdateNote> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Note'),
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
                  widget.client.put(updateUrl(widget.id),
                      body: {"body": controller.text});
                  Navigator.pop(context);
                },
                child: const Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
