
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:flutter/material.dart';

class CompletionProcess extends StatefulWidget {
  const CompletionProcess({Key? key, required this.humanData}) : super(key: key);

    final HumanData humanData;

  @override
  State<CompletionProcess> createState() => _CompletionProcessState();
}

class _CompletionProcessState extends State<CompletionProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.humanData.number)
      ),
    );
  }
}
