import 'package:flutter/material.dart';

import '../model/contact_book.dart';

class NewContactView extends StatefulWidget
{
  const NewContactView({Key? key}) : super(key: key);

  @override
  State<NewContactView> createState() => _NewContactViewState();
}


class _NewContactViewState extends State<NewContactView>
{
  late final TextEditingController _controller ;

  @override
  void didUpdateWidget(covariant NewContactView oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _controller=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Add a new Contact')
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Enter a new Contact Here',
            ),
          ),
          TextButton(
            onPressed: () {
              final contact=Contact(name:_controller.text);
              ContactBook().add(contact: contact);
              Navigator.of(context).pop();
            },
            child: const Text('Add contact'),
          )
        ],

      ),

    );
  }
}